import { Sequelize, DataTypes } from "sequelize"
import dotenv from 'dotenv'
dotenv.config()

let db_password = process.env.DB_PASSWORD
export const sequelize = new Sequelize('proyecto_bdd', 'root', db_password, {
	host: '127.0.0.1',
	dialect: 'mysql'
})

export const dataTypes = DataTypes



