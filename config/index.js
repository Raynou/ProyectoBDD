import express from "express"
import expressNunjucks from 'express-nunjucks'
import bodyParser from "body-parser"
import queryRoutes from "../src/routes/queries.routes.js"
import renderRoutes from "../src/routes/render.routes.js"
import nunjucks from "nunjucks"

import sessions from "express-session"
import flash from "express-flash"


let isWin = process.platform === 'win32'

const app = express()


let dir = process.cwd() + '/src/templates' 

if (isWin) 
	dir = process.cwd() + '\\src\\templates'


app.use(express.static('public'))

app.use(bodyParser.urlencoded({ extended: false }));
app.use(bodyParser.json());

//session middleware
app.use(sessions({
    secret: "rafaelgarciamendoza",
    saveUninitialized:false,
    cookie: { maxAge: 600000 },
    resave: false
}));

//flash middleware
app.use(flash());

app.set('views', dir);

expressNunjucks(app, {
    watch: true,
    autoescape: true
});

app.use(express.static('public'))


// Routes
app.use(queryRoutes)

app.use(renderRoutes)

app.listen(3000)


console.log(`Server running on port 3000`)
