local RUSBT7 = LightTank:New{
	name				= "BT-7",	
	buildCostMetal		= 2000,
	maxDamage			= 1400,
	trackOffset			= 5,
	trackWidth			= 20,

	weapons = {
		[1] = {
			name				= "M1938_20k45mmAP",
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[2] = {
			name				= "M1938_20k45mmHE",
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[3] = {
			name				= "DT",
		},
		[4] = {
			name				= ".50calproof",
		},
	},
	customParams = {
		armor_front			= 20,
		armor_rear			= 103,
		armor_side			= 15,
		armor_top			= 10,
		slope_front			= 18,
		slope_rear			= -16,
		maxammo				= 18,
		maxvelocitykmh		= 52,
		killvoicecategory_hardveh	= "RUS/Tank/RUS_TANK_TANKKILL",
		killvoicephasecount		= 3,
		customanims			= "bt7",
		pass_morph_unitrules_param = "customization_code",
	},
}

local RUSBT7_Wheeled = ArmouredCar:New(RUSBT7):New{
	name				= "BT-7 (on wheels)",
	customParams = {
		maxvelocitykmh = 72,
		wheeled_mode = 1,
	},
}

return lowerkeys({
	["RUSBT7"] = RUSBT7,
	["RUSBT7_Wheeled"] = RUSBT7_Wheeled,
})
