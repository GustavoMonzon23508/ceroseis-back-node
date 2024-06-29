const mysql = require ("mysql2");

const connection = mysql.createConnection({
    host: 'https://phpmyadmin.alwaysdata.com/phpmyadmin/index.php?route=/',
    user: 'gmonzon73_grupo6',
    password: 'ceroseis.2024',
    database: 'gmonzon73_ceroseis',
});
connection.connect((error) => {
    if (error){
        return console.error(error)
    }
    console.log("conectado");
});
module.exports = connection;
 