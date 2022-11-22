import { Sequelize, DataTypes } from "sequelize"
import dotenv from 'dotenv';
dotenv.config()
export const sequelize = new Sequelize('proyecto_bdd', 'root', process.env.DB_PASSWORD, {
	host: '127.0.0.1',
	dialect: 'mysql'
})

export const dataTypes = DataTypes



