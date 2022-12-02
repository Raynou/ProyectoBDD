import { sequelize, dataTypes } from "../../config/database.js"
import { QueryTypes } from "sequelize";
import { event } from "../../db/models/event.js";
import { team } from "../../db/models/team.js";
import { participant } from "../../db/models/participant.js";

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

export async function team_event(){
	const teams = await team.findAll();
	const events = await sequelize.query("call get_events_after_current_date()", QueryTypes.SELECT)
	return {"events":events, "teams" : teams}
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

export async function putEvent(eventInput){
	// Insertar evento
	let response = 'Evento insertado exitosamente!'

	try{
		await event.create({
			nombre_evento: eventInput.nombre, 
			fecha_inicio: eventInput.f_inicio,
			fecha_fin:eventInput.f_fin,
			lugar:eventInput.lug
		})
		return response
	}catch (error){
		response = 'Evento ya existente'
		return response
	}
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

/*PROYECTO
 @para nom_proyecto - nombre_proyecto
 @param cod_eq - cod_equipo
*/
/*EVALUAR_EN
 @param proyecto - cod_proyecto
 @param evento  - cod_evento
 @param jurado - id_jurado
*/
export async function assignTeam(assign){
	// Insertar evento
	await sequelize.query('call set_proyecto(?, ?);', {
		replacements: [assign.nombre, assign.equipo]
	})
	await sequelize.query('call set_evaluacion((SELECT cod_proyecto FROM PROYECTO ORDER BY cod_proyecto DESC LIMIT 1), ?, null);', {
		replacements: [assign.evento]
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

export async function putCalif(catpro, catdis, catcons, jurado){
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

	const res = await sequelize.query('call update_project_jury(?, ?, ?);', {
		replacements: [catcons.equipo, cod_evento, jurado]
	})
    console.log(res)
}

export async function getJudge(){
	return sequelize.query('call get_jurado()');
}

export async function putJudge(curp, nomPila, primerApellido, segundoApellido, user, password){
	await sequelize.query('call set_jurado(?, ?, ?, ?, ?, ?)', {
		replacements:[curp, nomPila, primerApellido, segundoApellido, user, password]
	})
}

export async function getTeams(){
	return await team.findAll();
}

export async function getTeamById(teamCode) {
	return await team.findAll({
		where:{
			cod_equipo:teamCode
	}})
}

export async function getTeamByName(teamName) {
	return await team.findAll({
		where:{
			nombre_equipo:teamName
	}})
}

export async function getPartOfTeam(teamCode){
	return await participant.findAll({
		where:{
			cod_equipo: teamCode
		}
	})
}

export async function deleteTeam(teamCode){
	team.destroy({
		where:{
			cod_equipo:teamCode
		}
	})
}

console.log(await getTeamByName('Dinamita'))


//sequelize.close()
