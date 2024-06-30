const mysql = require ("mysql2");

const connection = mysql.createConnection({
    host: "mysql-gmonzon73.alwaysdata.net",    
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
 