import { sequelize } from "../../config/database.js"
import { QueryTypes } from "sequelize";


export const eventsPriorToCurrentData = await sequelize.query("call get_events_prior_to_current_date()", QueryTypes.SELECT)

sequelize.close()


