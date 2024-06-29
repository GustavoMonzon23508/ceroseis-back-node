const express = require("express");
const router = express.Router();

const productos = [
    {id:1, nombre:"producto 1", stock: 10},
    {id:2, nombre:"producto 2", stock: 5},
    {id:3, nombre:"producto 3", stock: 10},
];
const controller = require("../controllers/productos.controller");
//  Prefijo: /productos
router.get("/", controller.index);
router.get("/:id", controller.show);
router.post("/", controller.store);

router.put("/:id",controller.update);
router.delete("/:id", controller.destroy);

module.exports = router;
