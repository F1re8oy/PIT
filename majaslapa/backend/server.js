import express from 'express';
import mysql from 'mysql2';
import cors from 'cors';

const app = express();
app.use(cors());
app.use(express.json());

// Create database connection
const db = mysql.createConnection({
  host: 'localhost',
  user: 'user',
  password: 'password',
  database: 'auto',
  charset: 'utf8mb4',
});

// Connect to database
db.connect((err) => {
  if (err) {
    console.error('Error connecting to database:', err.message);
    return;
  }
  console.log('Connected to MySQL database.');
});

// Endpoint to fetch data from Markas table
app.get('/api/markas', (req, res) => {
  const query = 'SELECT Marka FROM Markas';
  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching data:', err.message);
      res.status(500).send('Error fetching data');
    } else {
      res.json(results);
    }
  });
});

app.get('/api/apraksts', (req, res) => {
    const query = 'SELECT Apraksts, Dibinatajs, Dibinasanas_gads FROM Markas';
    db.query(query, (err, results) => {
      if (err) {
        console.error('Error fetching data:', err.message);
        res.status(500).send('Error fetching data');
      } else {
        res.json(results);
      }
    });
  });

app.get('/api/modelis', (req, res) => {
  const query = 'SELECT Modelis FROM Modeli';
  db.query(query, (err, results) => {
    if (err) {
      console.error('Error fetching data:', err.message);
      res.status(500).send('Error fetching data');
    } else {
      res.json(results);
    }
  });
});

app.get('/api/modelis_nosaukums', (req, res) => {
    const query = 'SELECT Nosaukums FROM Modeli';
    db.query(query, (err, results) => {
      if (err) {
        console.error('Error fetching data:', err.message);
        res.status(500).send('Error fetching data');
      } else {
        res.json(results);
      }
    });
  });

// Start server
const PORT = 3000;
app.listen(PORT, () => {
  console.log(`Server running on port ${PORT}`);
});
