import { sequelize } from "../../config/database.js"
import { QueryTypes } from "sequelize";


export async function events() {
	const prior_events =  await sequelize.query("call get_events_prior_to_current_date()", QueryTypes.SELECT)
	const current_events = await sequelize.query("call get_events_after_current_date()", QueryTypes.SELECT)
	return {"current":current_events, "prior":prior_events}
}

export async function evaluations(event, category) {
	const top_evaluations =  await sequelize.query('call get_top_teams(?,?,100);', {
		replacements: [event, category]
	})
	console.log(top_evaluations)
	return {"evaluations":top_evaluations}
}

export async function login(username, pass) {
    const result = await sequelize.query("call check_user_wrapper(" + username + ", " + pass + ")", QueryTypes.SELECT)
    return result
}

export async function get_jury_code(username) {
    const result = await sequelize.query("call get_jury_code(" + username + ")", QueryTypes.SELECT)
    return result
}


// TODO: putTeam function


/*
 *@param teamName - String
 *@param category - String
 *@param institution - String
 *@param participants - JSON Array

 *participant JSON strucure:
 *
 * participant:{
 *  CURP: 'curp',
 *  nombre_pila: 'nombre_pila',
 *  apellido_1: 'apellido_1',
 *  apellido_2: 'apellido_2',
 *  fecha_nac: 'YYYY-MM-DD'
 * }
 * */
export async function putTeam(teamName, category, institution, participants){

	// Insertar equipo
	await sequelize.query('call set_team(?, ?, ?);', {
		replacements: [teamName, category, institution]
	})


	// Traer el codigo del equipo y la categoria
	const teamRes = await sequelize.query('call get_last_team();')

	

	// Validar la edad del participante en base a la categoria
	
	for(let i = 0; i < 3; i++){

		let participant = participants[i]

		let bornDate = new Date(participant.fecha_nac)
		
		let age = calculateAge(bornDate)

		if(!validateAge(age, teamRes[0].categoria)){
			console.log(`Participante inválido, edad: ${age}`)
		}else{
		// Insertar participante
		putParticipant(participant, teamRes[0].cod_equipo)
		}
		
	}
	
}

function calculateAge(birthdayString) {
	let birthday = new Date(birthdayString)
    let ageDifMs = Date.now() - birthday.getTime()
    let ageDate = new Date(ageDifMs)
	return Math.abs(ageDate.getUTCFullYear() - 1970)
}

function validateAge(age, teamCategory){
		const categoryAgeRanges = {
		primaria: {
			inferiorLimit: 6,
			superiorLimit: 11
		},
		secundaria:{
			inferiorLimit: 12,
			superiorLimit: 14
		},
		bachillerato:{
			inferiorLimit: 15,
			superiorLimit: 17
		},
		profesional:{
			inferiorLimit: 18,
			superiorLimit: Number.MAX_SAFE_INTEGER
		}
	}
	return age >= categoryAgeRanges[teamCategory].inferiorLimit && age <= categoryAgeRanges[teamCategory].superiorLimit
}

async function putParticipant(participant, teamCode){

	console.log(participant)
	await sequelize.query('call set_participant(?, ?, ?, ?, ?, ?);', {
		replacements: [participant.CURP, teamCode, participant.nombre_pila, participant.apellido_1, participant.apellido_2, participant.fecha_nac]
	})

}

//sequelize.close()
