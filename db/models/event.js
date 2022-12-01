import { sequelize, dataTypes } from "../../config/database.js"
export const event = sequelize.define('EVENTO', {
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