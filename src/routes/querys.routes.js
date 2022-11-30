import {Router} from "express"
import * as query from "./querys.js"

const router = Router()





router.get('/query/greets', (req, res) => res.send('hola'))

router.get('/query/events', async function(req, res) {
    res.send(await query.events());
});

router.post('/query/set_team', async (req, res) => {

	let teamName = req.body.nombre_equipo
	let category = req.body.categoria
	let institution = req.body.institucion
	let participants = req.body.participantes
	await query.putTeam(teamName, category, institution, participants)
	res.send('Ok')
	
})


export default router
