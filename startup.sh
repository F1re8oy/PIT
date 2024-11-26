#!/bin/bash

COMMAND=$1  # The first argument to the script (start or stop)

start() {
  # Set up a process group so we can kill all processes when the script stops
  set -m
  trap "echo 'Process interrupted. Cleaning up...'; stop; exit 1" INT TERM

  echo "Starting Docker Compose..."
  docker-compose up -d
  if [ $? -ne 0 ]; then
    echo "Docker Compose failed. Exiting."
    exit 1
  fi
  echo "Docker Compose is up."

  sleep 10

  echo "Running npm dev script..."
  cd ./majaslapa
  npm run dev &  # Run npm dev in the background
  NPM_PID=$!
  if [ $? -ne 0 ]; then
    echo "npm run dev failed. Exiting."
    stop
    exit 1
  fi
  echo "npm dev script running (PID $NPM_PID)."

  echo "Starting Node server..."
  node ./backend/server.js &  # Run Node server in the background
  NODE_PID=$!
  if [ $? -ne 0 ]; then
    echo "Node server failed to start. Exiting."
    stop
    exit 1
  fi
  echo "Node server running (PID $NODE_PID)."

  echo "All processes started successfully."

  # Keep the script running and allow it to manage all processes
  wait
}

stop() {
  echo "Stopping all processes..."

  echo "Stopping Docker Compose..."
  docker-compose down
  if [ $? -ne 0 ]; then
    echo "Failed to stop Docker Compose."
  fi
  echo "Docker Compose stopped."

  echo "Killing npm run dev processes..."
  pkill -f "npm run dev" 2>/dev/null || echo "No npm process to stop."
  pkill -f "node.*vite" 2>/dev/null || echo "No Vite process to stop."
  echo "npm run dev processes stopped."

  echo "Killing Node server process (PID $NODE_PID)..."
  kill $NODE_PID 2>/dev/null || echo "No Node.js server to stop."
  echo "Node server stopped."

  echo "Stopping all remaining child processes..."
  pkill -P $$ 2>/dev/null || echo "No remaining child processes to stop."

  echo "All processes stopped."
}

if [ "$COMMAND" == "start" ]; then
  start
elif [ "$COMMAND" == "stop" ]; then
  stop
else
  echo "Usage: $0 {start|stop}"
  exit 1
fi
