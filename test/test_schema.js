import readline from "readline"
import fs from "fs"
import { Sequelize, DataTypes } from "Sequelize"

const sequelize = new Sequelize('proyecto_bdd', 'root', 'Supernick_145', {
	host: '127.0.0.1',
	dialect: 'mysql'
})

const Event = sequelize.define('EVENTO', {
	cod_evento: {type: DataTypes.INTEGER, primaryKey: true, unique:true},
	fecha: {type: DataTypes.DATE},
	lugar: {type: DataTypes.STRING}

},{freezeTableName:true, timestamps:false})

const insertUsers = async () => {
	
	await sequelize.authenticate();

	const file = readline.createInterface(fs.createReadStream('EVENTO.csv'))
	const events = []

	file.on("line", async(line) => {
		const [cod_evento, fecha, lugar] = line.split(',')
		events.push({cod_evento, fecha, lugar})
	})

	file.on('close', async() => {
		await Event.bulkCreate(events)
	})
}

insertUsers();
