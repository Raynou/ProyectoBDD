import { Sequelize, DataTypes } from "sequelize"
const sequelize = new Sequelize('proyecto_bdd', 'root', 'Supernick_145', {
	host: '127.0.0.1',
	dialect: 'mysql'
})

exports.connection = sequelize
exports.DataTypes = DataTypes

