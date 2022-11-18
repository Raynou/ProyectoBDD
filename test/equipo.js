import { Sequelize, DataTypes } from "sequelize";
import fs from "fs"
import readline from "readline"

const sequelize = new Sequelize('proyecto_bdd', 'root', 'Supernick_145', {
	host: '127.0.0.1',
	dialect: 'mysql'
})

const Team = sequelize.define('EQUIPO', {
	cod_equipo: {type: DataTypes.INTEGER, primaryKey: true, unique:true},
	categoria: {type: DataTypes.STRING},
	institucion: {type: DataTypes.STRING}

},{freezeTableName:true, timestamps:false})

export const insertTeams = async () => {
	
	await sequelize.authenticate();

	const file = readline.createInterface(fs.createReadStream('CSV/EQUIPO.csv'))
	const teams = []

	file.on("line", async(line) => {
		const [cod_equipo, categoria, institucion] = (line + ',')
			.split(/(?: *?([^",]+?) *?,|" *?(.+?)" *?,|( *?),)/)
  		.slice(1)
  		.reduce(
    		(a, b) => (a.length > 0 && a[a.length - 1].length < 4)
      		? [...a.slice(0, a.length - 1), [...a[a.length - 1], b]]
      		:[...a, [b]],
    			[],
  		)
  		.map(
    		e => e.reduce(
      		(a, b) => a !== undefined ? a : b, undefined,
    		),
  		);
		teams.push({cod_equipo, categoria, institucion})
	})

	file.on('close', async() => {
		await Team.bulkCreate(teams)
	})
}

