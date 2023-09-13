const express = require('express');
const app = express();
const PORT = process.env.PORT || 3000;
const path = require("path");
const morgan = require("morgan");
const methodOverride =  require('method-override');
const bodyParser = require("body-parser")


const mainRoutes =require("./routes/mainRoutes");

app.listen(PORT, () => console.log(`servidor corriendo en el puerto ${PORT}`));

app.use(express.static(__dirname + '/public'));

app.use(morgan('dev'));

app.use(bodyParser.json({type: 'application/json'}))
app.use(express.json())
app.use(express.urlencoded({extended: false}))
app.use(methodOverride('_method'))

app.set('view engine', 'ejs');
app.set('views', path.join(__dirname, 'views'));

app.use("/api/tareas",mainRoutes)