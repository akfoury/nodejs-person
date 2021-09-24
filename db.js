let mysql = require('mysql');
let dbConfig = require('./app/config/db.config');

let connection = mysql.createConnection({
    host: dbConfig.HOST,
    user: dbConfig.USER,
    password: dbConfig.PASSWORD,
    database: dbConfig.DB
});

connection.connect(function(err) {
    if(err) {
        return console.error('error : ' + err.message);
    }
    console.log('Connected to the MySQL server');
});


module.exports = connection;