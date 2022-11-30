import {Router} from "express"
import * as query from "./querys.js"

const router = Router()
var session


router.get('/query/greets', (req, res) => res.send('hola'))

router.get('/query/events', async function(req, res) {
    res.send(await query.events());
});

router.post('/query/login', async function(req, res) {
    const user = req.body.codigo;
    const pass = req.body.contraseña;

    const result = await query.login("'" + user + "'", "'" + pass + "'");
    const result_code = result[0]["@userType"];

    session=req.session

    if (result_code == 2) {
	session.userid="cordi"
    } else if (result_code == 1) {
	const id = await query.get_jury_code("'" + user + "'");
	console.log(id)
	session.userid=id
    } else {
	console.log("No existe ningun usuario");
    }

    console.log(session)

    res.redirect("/dashboard")
});

router.post('/query/set_team', (req, res) => {

	console.log(req.input)
	res.send('Insertando equipo...')
})


export default router
