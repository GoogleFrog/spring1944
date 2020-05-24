local GERTiger = HeavyTank:New{
	name				= "PzKpfw VI Tiger Ausf E",
	buildCostMetal		= 6592,
	maxDamage			= 5700,
	trackOffset			= 5,
	trackWidth			= 23,

	weapons = {
		[1] = {
			name				= "KwK88mmL56AP",
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[2] = {
			name				= "KwK88mmL56HE",
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[3] = {
			name				= "MG34",
		},
		[4] = {
			name				= "MG34",
			mainDir				= [[0 0 1]],
			maxAngleDif			= 30,
		},		
		[5] = {
			name				= ".50calproof",
		},
	},
	customParams = {
		armor_front			= 102,
		armor_rear			= 82,
		armor_side			= 82,
		armor_top			= 26,
		slope_front			= 9,
		slope_rear			= -9,
		maxammo				= 17,
		turretturnspeed		= 12, -- 60s for 360
		maxvelocitykmh		= 45.4,

	},
}

return lowerkeys({
	["GERTiger"] = GERTiger,
})
