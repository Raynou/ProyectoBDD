import {Router} from "express"
import * as query from "./querys.js"
import * as script from "./scripts.js"
const router = Router()
var session

router.get('/query/greets', (req, res) => res.send('hola'))

router.get('/query/events', async function(req, res) {
    res.send(await query.events());
});

router.get('/query/judge', async function (req, res) {
	res.send(await query.getJudge())
})

router.get('/query/judge_event', async (req, res) =>{
	res.send(await query.judge_event()) 
})

router.post('/query/login', async function(req, res) {
    const user = req.body.codigo;
    const pass = req.body.contraseña;

    console.log(req.body)

    const result = await query.login("'" + user + "'", "'" + pass + "'");
    const result_code = result[0]["@userType"];

    session=req.session

    if (result_code == 2) {
	session.userid="cordi"
    } else if (result_code == 1) {
	const res = await query.get_jury_code("'" + user + "'");
	session.userid=res[0]["curp"]
    } else {
	console.log("No existe ningun usuario");
    }

    console.log(session)

    res.redirect("/dashboard")
});

router.get('/query/evaluations', async function(req, res) {
    console.log(req.query)
    const evento = req.query.evento
    const cat = req.query.categoria_evento

    res.send(await query.evaluations(evento, cat ));
});

router.post('/query/set_team', (req, res) => {
	const data = req.body

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

	let validator = 0
	let rejectedPart = []
	
	for(let i = 0; i<3;i++){
		let age = script.calculateAge(part[i].fecha_nac)
		if(script.validateAge(age, cat)){
			validator++
			rejectedPart.push(part[i])
		}
	}

	if(validator == 3)
		res.send(query.putTeam(name, cat, inst, part))
	else
		res.send(`Participante ${rejectedPart} inválido`)
})

router.post('/query/set_event', (req, res) => {
	const data = req.body

	const event ={
		nombre: data.nombre_evento,
		f_inicio: data.inicio_evento,
		f_fin: data.fin_evento, 
		lug: data.ubicacion_sede
	}

	console.log(event)
	res.send(query.putEvent(event))
})

router.post('/query/assign_judge', (req, res) => {
	const data = req.body

	const assign ={
		evento: data.evento_colaborar,
		jurado: data.jurado_colaborar,
		categoria: data.categoria_jurado
	}

	console.log(assign)
	res.send(query.assignJudge(assign))
})

router.post('/query/set_calif', (req, res) => {
	const data = req.body

	const catpro ={
		equipo:data.equipo_eva,
		evento:data.evento_eva,
		sub1:data.inspeccion_catpro, 
		sub2:data.sisauto_catpro, 
		sub3:data.demo_catpro, 
		sub4:data.sisman_catpro
	}

	const catdis ={
		equipo:data.equipo_eva,
		evento:data.evento_eva,
		sub1:data.bitacora_catdis, 
		sub2:data.medio_catdis
	}

	const catcons ={
		equipo:data.equipo_eva,
		evento:data.evento_eva,
		sub1:data.inspec_catcons, 
		sub2:data.libreta_catcons
	}

	res.send(query.putCalif(catpro, catdis, catcons))
})

router.post('/query/set_judge', (req, res) =>{
	const data = req.body;
	let curp = data.curp
	let nomPila = data.nom_pila
	let primerApellido = data.apellido_1
	let segundoApellido = data.apellido_2
	let user = data.user
	let password = data.password

	res.send(query.putJudge(curp, nomPila, primerApellido, segundoApellido, user, password))
})

export default router
