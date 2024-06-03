'use strict';

const express = require('express');
const app = express();
const PORT = 9000;

app.use(express.static('public'));

// Start listening on the specified PORT
app.listen(PORT, () => {
    console.log(`Server is running on http://localhost:${PORT}`);
});