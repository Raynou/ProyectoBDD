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
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard Coordinador"});
});
router.get('/dashboard/coordinador/registro_equipo', function(req, res) {
    fetch("http://localhost:3000/query/events", {method: "GET"}).then(res => res.json()).
	then((json) => {
        res.render('dashboard/registro_equipo.html', {current_page: "Dashboard Coordinador", events: json});
    });
});
router.get('/dashboard/coordinador/registro_jurado', function(req, res) {
    fetch("http://localhost:3000/query/events", {method: "GET"}).then(res => res.json()).
	then((json) => {
        res.render('dashboard/registro_jurado.html', {current_page: "Dashboard Coordinador", events: json});
    });
});
router.get('/dashboard/coordinador/registro_evento', function(req, res) {
    res.render('dashboard/registro_evento.html', {current_page: "Dashboard Coordinador"});
});

router.get('/dashboard/jurado', function(req, res) {
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard Jurado"});
});
router.get('/dashboard/jurado/evaluar_equipo', function(req, res) {
    fetch("http://localhost:3000/query/events", {method: "GET"}).then(res => res.json()).
	then((json) => {
        res.render('dashboard/evaluar_equipo.html', {current_page: "Dashboard Jurado", events: json});
    });
});

router.get('/dashboard/publico', function(req, res) {
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard Publico"});
});
router.get('/dashboard/publico/ver_resultados', function(req, res) {
    fetch("http://localhost:3000/query/events", {method: "GET"}).then(res => res.json()).
	then((json) => {
        res.render('dashboard/ver_resultados.html', {current_page: "Dashboard Publico", events: json});
    });
});

export default router

