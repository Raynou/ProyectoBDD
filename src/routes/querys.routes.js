import {Router} from "express"
import * as query from "./querys.js"

const router = Router()


router.get('/query/greets', (req, res) => res.send('hola'))

router.get('/query/events', async function(req, res) {
    res.send(await query.events());
});

router.get('/query/evaluations', async function(req, res) {
    res.send(await query.evaluations());
});

router.post('/query/set_team', (req, res) => {
	const data = req.body
	/*const request = {
		nombre_equipo: data.nombre_equipo,
		categoria: data.categoria_equipo,
		institucion: data.institucion_equipo,
		participantes:[
		{
			CURP: data.curp_integrante1,
			nombre_pila: data.nombre_integrante1,
			apellido_1: data.apellido1_integrante1,
			apellido_2: data.apellido1integrante1,
		  	fecha_nac: data.edad_integrante1
		},
		{
			CURP: data.curp_integrante2,
			nombre_pila: data.nombre_integrante2,
			apellido_1: data.apellido1_integrante2,
			apellido_2: data.apellido2_integrante2,
		  	fecha_nac: data.edad_integrante2
		},
		{
			CURP: data.curp_integrante3,
			nombre_pila: data.nombre_integrante3,
			apellido_1: data.apellido1_integrante3,
			apellido_2: data.apellido2_integrante3,
		  	fecha_nac: data.edad_integrante3
		}
	 ]
	}*/

	const name = data.nombre_equipo;
	const cat = data.categoria_equipo;
	const inst = data.institucion_equipo
	const part = [
		{
			CURP: data.curp_integrante1,
			nombre_pila: data.nombre_integrante1,
			apellido_1: data.apellido1_integrante1,
			apellido_2: data.apellido2_integrante1,
		  	fecha_nac: data.edad_integrante1
		},
		{
			CURP: data.curp_integrante2,
			nombre_pila: data.nombre_integrante2,
			apellido_1: data.apellido1_integrante2,
			apellido_2: data.apellido2_integrante2,
		  	fecha_nac: data.edad_integrante2
		},
		{
			CURP: data.curp_integrante3, 
			nombre_pila: data.nombre_integrante3,
			apellido_1: data.apellido1_integrante3,
			apellido_2: data.apellido2_integrante3,
		  	fecha_nac: data.edad_integrante3
		}
	]

	res.send(query.putTeam(name, cat, inst, part))
})

router.post('/query/set_event', (req, res) => {
	console.log(req.body)
	res.send(req.body)
})

router.post('/query/set_judge', (req, res) => {
	console.log(req.body)
	res.send(req.body)
})


export default router
