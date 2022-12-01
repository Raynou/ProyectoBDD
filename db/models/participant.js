import { sequelize, dataTypes } from "../../config/database.js"

export const participant = sequelize.define('PARTICIPANTE',{
    curp: {
        type: dataTypes.STRING,
        primaryKey: true
    },
    cod_equipo:{
        type: dataTypes.INTEGER,
        allowNull: false
    },
    nombre_pila:{
        type: dataTypes.STRING,
        allowNull: false
    } ,
    apellido_1: {
        type: dataTypes.STRING,
        allowNull: false
    },
    apellido_2: {
        type: dataTypes.STRING,
        allowNull: false
    },
    fecha_nac: {
        type: dataTypes.STRING,
        allowNull: false
    },
},{freezeTableName: true, timestamps: false})