const express = require("express");
const router = express.Router();

const mainController= require("../controllers/mainController");
const tareaController = require("../controllers/tareaController"); 

router.get("/", mainController.index); 



router.get("/", tareaController.mostrarTareas);

router.post("/", tareaController.crearTarea);

router.get("/buscar/:id", tareaController.obtenerTareaPorID);

router.delete('borrar/:id?', tareaController.borrarTarea); 

router.get("/:estado", tareaController.tareasPendientes);

router.get("/:id/dias-transcurridos", tareaController.diasTranscurridos);

module.exports= router;