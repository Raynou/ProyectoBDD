import { sequelize, dataTypes } from "../../config/database.js"
import { QueryTypes } from "sequelize";

export async function events() {
	const prior_events =  await sequelize.query("call get_events_prior_to_current_date()", QueryTypes.SELECT)
	const current_events = await sequelize.query("call get_events_after_current_date()", QueryTypes.SELECT)
	return {"current":current_events, "prior":prior_events}
}

export async function evaluations(event, category) {
    const top_evaluations =  await sequelize.query('call get_top_teams(?,10,?);', {
		replacements: [event, category]
	})
	console.log(top_evaluations)
	return top_evaluations
}

export async function judge_event(){
	const judges = await sequelize.query("call get_jurado()", QueryTypes.SELECT)
	const events = await sequelize.query("call get_events_after_current_date()", QueryTypes.SELECT)
	return {"events":events, "judges" : judges}
}

export async function login(username, pass) {
    const result = await sequelize.query("call check_user_wrapper(" + username + ", " + pass + ")", QueryTypes.SELECT)
    return result
}

export async function get_jury_code(username) { 
    const result = await sequelize.query("call get_jury_code(" + username + ")", QueryTypes.SELECT)
    return result
}

export async function get_jury_cat_teams(curp_jurado) {
    const result = await sequelize.query("call get_jury_cat_teams('" + curp_jurado + "')", QueryTypes.SELECT)
    //console.log(result)



    return result
}

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
		putParticipant(participants[i], teamRes[0].cod_equipo)	
	}
	
}

async function putParticipant(participant, teamCode){
	console.log(participant)
	await sequelize.query('call set_participant(?, ?, ?, ?, ?, ?);', {
		replacements: [participant.CURP, teamCode, participant.nombre_pila, participant.apellido_1, participant.apellido_2, participant.fecha_nac]
	})

}

export async function putEvent(event){
	// Insertar evento

	// Define model of sequelize.

	let response = 'Evento insertado exitosamente!'

	const eventModel = sequelize.define('EVENTO', {
		cod_evento: {
			type: dataTypes.INTEGER,
			primaryKey: true,
			autoIncrement: true
		},
		nombre_evento:{
			type: dataTypes.STRING,
			allowNull: false,
			unique: true
		},
		fecha_inicio:{
			type: dataTypes.DATE,
			allowNull: false
		},
		fecha_fin:{
			type: dataTypes.DATE,
			allowNull: false
		},
		lugar: {
			type: dataTypes.STRING,
			allowNull: false
		}
	},{freezeTableName:true, timestamps:false})

	try{
		await eventModel.create({
			nombre_evento: event.nombre, 
			fecha_inicio: event.f_inicio,
			fecha_fin:event.f_fin,
			lugar:event.lug
		})
		return response
	}catch (error){
		response = 'Evento ya existente'
		return response
	}
	/*await sequelize.query('call set_evento(?, ?, ?, ?);', {
		replacements: [event.nombre, event.f_inicio, event.f_fin, event.lug]
	})*/
}

/*COLABORAR
 @param evento - cod_evento
 @param jurado - id_jurado
 @param cat - categoria
*/
export async function assignJudge(assign){
	// Insertar evento
	await sequelize.query('call set_colaborar(?, ?, ?);', {
		replacements: [assign.jurado, assign.evento, assign.categoria]
	})
}

/*CAT_PROGRAMACION
 @param proyecto - cod_proyecto
 @param evento - cod_evento
 @param cal_insp - cal_inspeccion_prog
 @param cal_sis - cal_sistema_aut
 @param cal_demos - cal_demostracion
 @param cal_sist_man - cal_sistema_man
*/
/*CAT_DISENNO
 @param proyecto - cod_proyecto
 @param evento - cod_evento
 @param cal_bit - cal_bitacora
 @param cal_med_dig - cal_medio_dig
*/
/*CAT_CONSTRUCCION
 @param proyecto - cod_proyecto
 @param evento - cod_evento
 @param cal_insp - cal_inspeccion_cons
 @param cal_lib - cal_libreta_ing
*/

export async function putCalif(catpro, catdis, catcons){
	// Insertar calif
    console.log(catpro)
    const nombre_evento = catpro.evento.replaceAll("-", " ")
    const cod_evento_res = await sequelize.query('call get_event_code(?);', {replacements: [nombre_evento]})
    const cod_evento = cod_evento_res[0].cod_evento
    console.log(cod_evento)

    await sequelize.query('call set_cat_prog(?, ?, ?, ?, ?, ?);', {
		replacements: [catpro.equipo, cod_evento, catpro.sub1, catpro.sub2, catpro.sub3, catpro.sub4]
	})
	await sequelize.query('call set_cat_disenno(?, ?, ?, ?);', {
		replacements: [catdis.equipo, cod_evento, catdis.sub1, catdis.sub2]
	})
	await sequelize.query('call set_cat_construccion(?, ?, ?, ?);', {
		replacements: [catcons.equipo, cod_evento, catcons.sub1, catcons.sub2]
	})
}


export async function getTeam(){
	
}

export async function getJudge(){
	return sequelize.query('call get_jurado()');
}

export async function putJudge(curp, nomPila, primerApellido, segundoApellido, user, password){
	await sequelize.query('call set_jurado(?, ?, ?, ?, ?, ?)', {
		replacements:[curp, nomPila, primerApellido, segundoApellido, user, password]
	})
}

//sequelize.close()
