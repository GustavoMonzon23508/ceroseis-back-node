const db = require("../db/db");

const index = (req, res) => {
    const sql = "SELECT * FROM productos";
    db.query(sql, (error, rows) => {
        if (error) {
            return res.status(500).json({error: "intente mas tarde"});          
        }
        res.json(rows);
    });
    const show = (req, res) => { 
      const { id } = req.params;

      const sql = "SELECT * FROM productos WHERE id = ?";
      db.query(sql, [id], (error, rows) => {
        if (error) {
            return res.status(500).json({error: "intente mas tarde"});          
        }
        if (rows.length ==0) {
            return res.status(404).send({ error: "no existe el producto"});
        }

        res.json(rows[0]);
    });
    
};  

};
module.exports = {
  index,
  show,
};
