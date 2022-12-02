import { sequelize, dataTypes } from "../../config/database.js"

export const judge =  sequelize.define('JURADO', {
    curp: {
        type: dataTypes.STRING,
        primaryKey: true
    },
    nombre_pila: {
        type: dataTypes.STRING,
        allowNull: false
    },
    apellido_2:{
        type: dataTypes.STRING,
        allowNull: false
    },
    usuario:{
        type: dataTypes.STRING,
        allowNull: true
    },
    contrasenna:{
        type: dataTypes.STRING,
        allowNull: false
    }
}, 
{freezeTableName:true, timestamps:false});