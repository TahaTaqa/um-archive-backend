const mysql = require('mysql2');
require('dotenv').config();

let db = mysql.createConnection({
  host: "localhost",
  user: "root",
  database: 'archive',
  password: process.env.PASSWORD
});



module.exports = db