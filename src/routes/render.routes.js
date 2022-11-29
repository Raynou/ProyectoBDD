import {Router} from "express"
import fetch from "node-fetch"

const router = Router()

router.get('/', function(req, res) {
    res.render('index.html', {current_page: "Proyecto VEX"});
});

router.get('/about', function(req, res) {
    res.render('about.html', {current_page: "Conocenos"});
});

router.get('/events', function(req, res) {
    fetch("http://localhost:3000/query/events", {method: "GET"}).then(res => res.json()).
	then((json) => {
	    res.render('events.html', {current_page: "Eventos", events: json});
    });
});

router.get('/dashboard', function(req, res) {
    res.render('dashboard/dashboard.html', {current_page: "Dashboard"});
});

router.get('/dashboard/login', function(req, res) {
    res.render('dashboard/login.html', {current_page: "Login"});
});

router.post('/dashboard/login', function(req, res) {
    // TODO: Llamar procedimiento almacenado para el login
    //res.render('dashboard/login.html', {current_page: "Login"});
    res.send('Por favor de checar la función render.routes.js linea 29');
});

router.get('/dashboard/coordinador', function(req, res) {
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard_Coordinador"});
});
router.get('/dashboard/coordinador/:registro_equipo', function(req, res) {
    res.render('dashboard/registro_equipo.html', {current_page: "Dashboard_Coordinador"});
});

router.get('/dashboard/jurado', function(req, res) {
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard_Jurado"});
});

router.get('/dashboard/equipo', function(req, res) {
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard_Equipo"});
});

export default router

