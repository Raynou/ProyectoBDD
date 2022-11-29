import {Router} from "express"
import * as query from "./querys.js"

const router = Router()


router.get('/query/greets', (req, res) => res.send('hola'))

router.get('/query/events', async function(req, res) {
    res.send(await query.events());
});

router.post('/query/set_team', (req, res) => {

	console.log(req.input)
	res.send('Insertando equipo...')
})


export default router
