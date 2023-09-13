const db = require("../db/Models");
const { Op } = require("sequelize");

const Tareas = db.Task; 


const tareaController = {
    mostrarTareas: (req, res) => {
        
        Tareas.findAll()
                .then(function (tasks) {
                        console.log("Prueba 1")                     
                        return res.render("index.ejs", { tasks });
                })
                .catch(function (err) {
                        console.log(err)
                }) 
    },

    crearTarea: (req, res) => {
        
        Tareas.create({
            titulo: req.body.titulo,
            descripcion: req.body.descripcion,
            estado: req.body.estado,
        })
        .then((tasks) => {
                res.render("index.ejs", {tasks});
            })
            .catch((error) => {
                console.error(error);
                res.status(500).send("Error al guardar la tarea");
            });
    },

    borrarTarea: (req, res) => {

        const id = req.params.id
        console.log(id)
		Tareas.destroy({ where: { id } })
			.then(function () {
				return res.redirect("index.ejs")
			})
	},

    obtenerTareaPorID: (req, res) => {
        const tareaId = req.params.id; 
        Tareas.findByPk(tareaId) 
            .then((tasks) => {
                if (!tasks) {
                    return res.status(404).send("Tarea no encontrada");
                }

                return res.render("index.ejs", { tasks }); 
            })
            .catch((error) => {
                console.error(error);
                res.status(500).send("Error al obtener la tarea por ID");
            });
    },

    tareasPendientes: (req, res) => {
        //console.log(req.params)
        Tareas.findAll({
            where: {
                estado: req.params.estado,
            },
        })
            .then((tasks) => {
                res.render("index.ejs", { tasks }); 
            })
            .catch((error) => {
                console.error(error);
                res.status(500).send("Error al obtener tareas pendientes");
            });
    },

    diasTranscurridos: (req, res) => {
        const tareaId = req.params.id; 

        Tareas.findByPk(tareaId)
            .then((tasks) => {
                if (!tasks) {
                    return res.status(404).send("Tarea no encontrada");
                }

                const fechaCreacion = tasks.createdAt;
                const fechaActual = new Date();
                const tiempoTranscurrido = Math.floor(
                    (fechaActual - fechaCreacion) / (1000 * 60 * 60 * 24)
                );

                res.send(`Días transcurridos desde la creación: ${tiempoTranscurrido} días`);
            })
            .catch((error) => {
                console.error(error);
                res.status(500).send("Error al obtener los días transcurridos");
            });
    },
};


module.exports = tareaController;
