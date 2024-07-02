const db = require("../db/db");

const index = (req, res) => {
    const sql = "SELECT * FROM productos";
        db.query(sql, (error, rows) => {
        if (error) {
            return res.status(500).json({error: "intente mas tarde"});          
        }
        res.json(rows);
        console.log(rows);
    });
};
const show = (req, res) => { 
      const { id } = req.params;

      const sql = "SELECT * FROM productos WHERE id = ?";
      db.query(sql, [id] , (error, rows) => {       
        if (error) {
            return res.status(500).json({error: "intente mas tarde cod1"});          
        }
        if (rows.length ==0) {
            return res.status(404).send({ error: "no existe el producto"});
        }

        res.json(rows[0]);
    });    
}; 
const store = (req, res) => { 
  const { nombre, precio, stock } = req.body;
    const sql = "INSERT INTO productos (id, nombre, caracteristicas, precio, stock, categoria) VALUE (?, ?, ?, ?, ?, ?)";
  db.query(sql, [id, nombre, caracteristicas, precio, stock, categoria], (error, result) => {
      if (error) {
          return res.status(500).json({error: "intente mas tarde cod2"});          
      }      
      const producto = {...req.body, id: result.insertId };
      res.status(201).json(producto); 
    });   
}; 
const update = (req, res) => {
    const { id } = req.params;
    const { nombre, precio, stock } = req.body;

    const sql = "UPDATE productos SET nombre = ?, precio = ?, stock = ? WHERE id = ?";
     db.query(sql, [nombre, precio, stock, id], (error, result) => {
      if (error) {
          return res.status(500).json({error: "intente mas tarde cod3"});          
      }  
      if (result.affectedRows == 0) {
        return res.status(404).send({error: "no existe el producto"}); 
      }   
      const producto = {...req.body, ...req.params }; 
      res.json(producto); 
    });

}; 


const destroy = (req, res) => { 
    const { id } = req.params;

    const sql = "DELETE FROM productos WHERE id = ?";
    db.query(sql, [id], (error, result) => {
      if (error) {
          return res.status(500).json({error: "intente mas tarde cod4"});          
      }
      if (result.affectedRows ==0) {
          return res.status(404).send({ error: "no existe el producto"});
      }

      res.json({mensaje: "Producto eliminado"});
  });    
}; 


module.exports = {
  index,
  show,
  store,
  update,
  destroy,
};
