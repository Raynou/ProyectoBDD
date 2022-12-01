import {Router} from "express"
import fetch from "node-fetch"

const router = Router()
var session;

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
    session = req.session

    console.log(session)

    if (session.userid == "cordi") {
	res.redirect("/dashboard/coordinador")
    } else if (session.userid) {
	res.redirect("/dashboard/jurado")
    } else {
	res.redirect("/dashboard/login")
    }
});

router.get('/dashboard/login', function(req, res) {
    res.render('dashboard/login.html', {current_page: "Login"});
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
    session = req.session
    console.log(session)
    fetch("http://localhost:3000/query/get_jury_cat_teams?userid="+session.userid, {method: "GET"}).then(res => res.json()).
	then((result) => {

	    const conv = function(text) {
		return text.replaceAll(" ", "-");
	    }

	    const inv_conv = function(text) {
		return text.replaceAll("-", " ");
	    }

	    var dict = []

	for (var i = 0; i < result.length; i++) {
	    var obj = result[i]

	    if (dict[obj.nombre_evento]) {
		dict[obj.nombre_evento].push(obj.cod_proyecto);
	    } else {
		dict[obj.nombre_evento] = [obj.cod_proyecto];
	    }
	}

	    var events = []
	    
	    for (var i = 0; i < result.length; i++) {
		var obj = result[i]
		result[i].nombre_evento = conv(result[i].nombre_evento)
		obj.nombre_evento = conv(obj.nombre_evento)

		if (!events.includes(obj.nombre_evento)) {
		    events.push(obj.nombre_evento);
		}
	    }

	    var jton = JSON.stringify(dict)




	    console.log(dict)
	    console.log(events)
	    console.log(result)
            res.render('dashboard/evaluar_equipo.html', {current_page: "Dashboard Jurado", events: events, data: result, conv: inv_conv});
    });
});

router.get('/dashboard/publico', function(req, res) {
    res.render('dashboard/dashboard_view.html', {current_page: "Dashboard Publico"});
});

router.get('/dashboard/publico/ver_resultados', async function(req, res) {

    const events_response = await fetch("http://localhost:3000/query/events", {method: "GET"})
    const events_data = await events_response.json()

    res.render('dashboard/ver_resultados.html', {current_page: "Dashboard Publico", events: events_data});
});

router.post('/dashboard/publico/ver_resultados', async function(req, res) {

    const events_response = await fetch("http://localhost:3000/query/events", {method: "GET"})
    const events_data = await events_response.json()

    const evals_response = await fetch("http://localhost:3000/query/evaluations?evento="+req.body.evento+"&categoria_evento="+req.body.categoria_evento, {method: "GET"})
    const evals_data = await evals_response.json()

    console.log(evals_data)

    res.render('dashboard/ver_resultados.html', {current_page: "Dashboard Publico", events: events_data, evaluations: evals_data, ten: console.log});
});

router.get("/dashboard/logout", function(req, res) {
    req.session.destroy();
    res.redirect("/");
});

export default router

