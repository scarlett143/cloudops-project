const express = require('express');
const mysql = require('mysql2/promise');
const app = express();
const PORT = 3000;

app.use(express.json());

const dbConfig = {
  host: 'cloudops-mysql.c3eeqo6iivwc.ap-south-2.rds.amazonaws.com',
  user: 'admin',
  password: 'Test123456',
  database: 'cloudops_db'
};

app.get('/health', (req, res) => {
  res.status(200).json({
    status: 'healthy',
    timestamp: new Date().toISOString(),
    service: 'cloudops-app-server'
  });
});

app.get('/', (req, res) => {
  res.status(200).json({
    message: 'CloudOps Enterprise Platform - App Server',
    version: '1.0.0',
    environment: 'development',
    timestamp: new Date().toISOString()
  });
});

app.get('/db/users', async (req, res) => {
  try {
    const connection = await mysql.createConnection(dbConfig);
    const [users] = await connection.execute('SELECT * FROM users');
    connection.end();
    
    res.status(200).json({
      message: 'Users from database',
      users: users,
      count: users.length
    });
  } catch (error) {
    res.status(500).json({
      error: 'Database connection failed',
      message: error.message
    });
  }
});

app.post('/api/process', (req, res) => {
  const data = req.body;
  res.status(200).json({
    message: 'Data processed successfully',
    data: data,
    processedAt: new Date().toISOString()
  });
});

app.listen(PORT, '0.0.0.0', () => {
  console.log(`Server running on port ${PORT}`);
});
