import { sequelize, dataTypes } from "../../config/database.js"

export const team = sequelize.define('EQUIPO', {
    cod_equipo: {
        type: dataTypes.INTEGER,
        primaryKey : true,
        autoIncrement: true
    },
    nombre_equipo: {
        type: dataTypes.STRING,
        unique: true,
        allowNull: false
    },
    categoria: {
        type: dataTypes.ENUM('primaria', 'secundaria', 'bachillerato', 'profesional'),
        allowNull: false
    },
    institucion:  {
        type: dataTypes.STRING,
        allowNull: false
    }
}, {freezeTableName:true, timestamps: false})
