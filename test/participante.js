import fs from "fs"
import readline from "readline"
import {sequelize, dataTypes} from "../database.js"

const Participant = sequelize.define('PARTICIPANTE', {

	num_participante: {type: dataTypes.INTEGER, primaryKey: true, unique:true},
	cod_equipo: {type: dataTypes.INTEGER},
	nombre_pila: {type: dataTypes.STRING},
	apellido_1: {type: dataTypes.STRING},
	apellido_2: {type: dataTypes.STRING, allowNull: true},
	fecha_nac: {type: dataTypes.DATEONLY}

},{freezeTableName:true, timestamps:false})

export const insertParticipants = async () => {
	
	await sequelize.authenticate();

	const file = readline.createInterface(fs.createReadStream('CSV/PARTICIPANTE.csv'))
	const participants = []

	file.on("line", async(line) => {
		const [num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac] = line.split(',')
		participants.push({num_participante, cod_equipo, nombre_pila, apellido_1, apellido_2, fecha_nac})
	})

	file.on('close', async() => {
		await Participant.bulkCreate(participants)
	})
}

