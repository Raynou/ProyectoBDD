export function calculateAge(birthdayString) {
	let birthday = new Date(birthdayString)
    let ageDifMs = Date.now() - birthday.getTime()
    let ageDate = new Date(ageDifMs)
	return Math.abs(ageDate.getUTCFullYear() - 1970)
}

export function validateAge(age, teamCategory){
		const categoryAgeRanges = {
		primaria: {
			inferiorLimit: 6,
			superiorLimit: 11
		},
		secundaria:{
			inferiorLimit: 12,
			superiorLimit: 14
		},
		bachillerato:{
			inferiorLimit: 15,
			superiorLimit: 17
		},
		profesional:{
			inferiorLimit: 18,
			superiorLimit: Number.MAX_SAFE_INTEGER
		}
	}
	return age >= categoryAgeRanges[teamCategory].inferiorLimit && age <= categoryAgeRanges[teamCategory].superiorLimit
}