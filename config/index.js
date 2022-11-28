import express from "express"
import expressNunjucks from 'express-nunjucks'
import queryRoutes from "../src/routes/querys.routes.js"
import nunjucks from "nunjucks"

let isDarwin = process.platform === 'darwin'

const app = express()


let dir = process.cwd() + '\\src\\templates'

if (isDarwin) 
	dir = process.cwd() + '/src/templates'

// Routes
app.use(queryRoutes)

app.set('views', dir);

expressNunjucks(app, {
    watch: true,
    autoescape: true
});

app.use(express.static('public'))


app.get('/', function(req, res) {
    res.render('index.html');
});

app.get('/about', function(req, res) {
    res.render('about.html', {current_page: "Conocenos"});
});

app.get('/dashboard', function(req, res) {
    res.render('dashboard/dashboard.html', {current_page: "Dashboard"});
});

app.get('/dashboard/coordinador', function(req, res) {
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard_Coordinador"});
});

app.get('/dashboard/coordinador/:registro_jurado', function(req, res) {
    res.render('dashboard/registro_jurado.html', {current_page: "Dashboard_Coordinador"});
});

app.get('/dashboard/jurado', function(req, res) {
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard_Jurado"});
});

app.get('/dashboard/equipo', function(req, res) {
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard_Equipo"});
});



app.listen(3000)


console.log(`Server running on port 3000`)
