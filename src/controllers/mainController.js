const res = require("express/lib/response");
const fs = require("fs");
const path = require("path");

const db = require("../db/Models")
const sequelize = db.sequelize;
const { Op } = require("sequelize")

const Tareas = db.Task

const mainController = {
        
        index: (req, res) => {
                Tareas.findAll()
                .then(function (tasks) {                      
                        return res.render("index.ejs", { tasks });
                })
                .catch(function (err) {
                        console.log(err)
                }) 
                /* return res.json("HOLA") */
        }

};

module.exports = mainController;