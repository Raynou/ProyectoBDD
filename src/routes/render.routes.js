import {Router} from "express"

const router = Router()

router.get('/', function(req, res) {
    res.render('index.html');
});

router.get('/about', function(req, res) {
    res.render('about.html', {current_page: "Conocenos"});
});

router.get('/dashboard', function(req, res) {
    res.render('dashboard/dashboard.html', {current_page: "Dashboard"});
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

