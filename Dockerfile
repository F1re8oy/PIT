# Use the official MySQL image from the Docker Hub
FROM mysql:8.0

# Copy the schema and data SQL scripts to the Docker container
COPY .C:\Users\ronal\OneDrive\Documents\RTU\3.kurss_1.semestris\PIT\DB_data\01_schema.sql /docker-entrypoint-initdb.d/  
COPY .C:\Users\ronal\OneDrive\Documents\RTU\3.kurss_1.semestris\PIT\DB_data\02_data.sql /docker-entrypoint-initdb.d/

# Expose the default MySQL port
EXPOSE 3306
