'use strict';

const path = require("path");
const express = require('express');
// App
const app = express();
const PORT = 80;

app.use(express.static(path.join(__dirname, "..", "build")))
app.use(express.static("public"));

app.listen(PORT);
console.log('Running on http://localhost:' + PORT);