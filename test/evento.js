import readline from "readline"
import fs from "fs"
import { sequelize, dataTypes } from "../database.js"

const Event = sequelize.define('EVENTO', {
	cod_evento: {type: dataTypes.INTEGER, primaryKey: true, unique:true},
	fecha: {type: dataTypes.DATEONLY},
	lugar: {type: dataTypes.STRING}

},{freezeTableName:true, timestamps:false})

const insertEvents = async () => {
	
	await sequelize.authenticate();

	const file = readline.createInterface(fs.createReadStream('CSV/EVENTO.csv'))
	const events = []

	file.on("line", async(line) => {
		const [cod_evento, fecha, lugar] = line.split(',')
		events.push({cod_evento, fecha, lugar})
	})

	file.on('close', async() => {
		await Event.bulkCreate(events)
	})
}

insertEvents();
