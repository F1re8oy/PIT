const mysql = require('mysql2');

// Create the connection pool
const db = mysql.createConnection({
    host: "localhost",
    user: "user",
    password: "password",
    database: "auto",
    charset: "utf8mb4", // Add this line
  });
  

// Connect to the database
connection.connect((err) => {
    if (err) {
        console.error('Error connecting to the database:', err.message);
        return;
    }
    console.log('Connected to the MySQL database.');
});
