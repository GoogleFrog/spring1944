local ITASemovente105 = MediumTank:New(AssaultGun):New{
	name				= "Semovente da 105/25",
	description			= "Heavy Assault Gun",
	buildCostMetal		= 3450,
	maxDamage			= 1600,
	trackOffset			= 5,
	trackWidth			= 19,

	weapons = {
		[1] = {
			name				= "Ansaldo105mmL25HEAT",
			maxAngleDif			= 15,
		},
		[2] = {
			name				= "Ansaldo105mmL25HE",
			maxAngleDif			= 15,
		},
		[3] = {
			name				= ".50calproof",
		},
	},
	customParams = {
		armor_front			= 75,
		armor_rear			= 25,
		armor_side			= 45,
		armor_top			= 15,
		slope_front			= 5,
		slope_rear			= -15,
		slope_side			= 7,
		maxammo				= 11,
		maxvelocitykmh		= 35,
		weapontoggle		= "priorityHEATHE",
	},
}

return lowerkeys({
	["ITASemovente105"] = ITASemovente105,
})
