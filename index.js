'use strict';

const express = require('express');
const app = express();
const cors = require('cors');
const PORT = 9000;

const corsOptions = {
  origin: ['http://localhost:8080','http://localhost:3000', 'http://localhost:3001', 'http://localhost:8081', 'http://localhost:8082'],
  optionsSuccessStatus: 200,
};

app.use(express.static('public'), cors(corsOptions));

// Start listening on the specified PORT
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});