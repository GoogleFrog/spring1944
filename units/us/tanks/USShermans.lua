local ShermanBase = MediumTank:New{
	trackOffset			= 5,
	trackWidth			= 18,
	trackType			= "USShermanA",
	
	weapons = {
		[1] = {
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[2] = {
			mainDir				= [[0 16 1]],
			maxAngleDif			= 210,
		},
		[3] = {
			name				= "M1919A4Browning",
		},
		[4] = {
			name				= "M2BrowningAA",
		},
		[5] = {
			name				= "M1919A4Browning",
			mainDir				= [[0 0 1]],
			maxAngleDif			= 20,
		},
		[6] = {
			name				= ".50calproof",
		},
	},
	
	customParams = {
		armor_front			= 64,
		armor_rear			= 38,
		armor_side			= 38,
		armor_top			= 20,
		slope_front			= 47,
		slope_rear			= 11,
		turretturnspeed		= 26.5, -- 13.6s for 360
		maxvelocitykmh		= 42,

	},
}	

local USM4A4Sherman = ShermanBase:New{
	name				= "M4A3 Sherman",
	buildCostMetal		= 2550,
	maxDamage			= 3180,

	weapons = {
		[1] = {
			name				= "M375mmAP",
		},
		[2] = {
			name				= "M375mmHE",
		},
	},
	
	customParams = {
		maxammo				= 20,
		normaltex			= "unittextures/USM4ShermanA_normals.dds",
	},
}


local USM4Jumbo = USM4A4Sherman:New(HeavyTank):New{
	name				= "M4A3E2 Sherman Jumbo",
	description			= "Uparmoured Medium Tank",
	buildCostMetal		= 6530,
	maxDamage			= 4267,
	
	customParams = {
		armor_front			= 102,--38+64
		armor_side			= 76,
		maxvelocitykmh		= 35,
		normaltex			= "unittextures/USM4Jumbo_normals.dds",
	},
}

local USM4A376Sherman = ShermanBase:New{
	name				= "M4A3(76) HVSS Sherman",
	description			= "Upgunned Medium Tank",
	buildCostMetal		= 3135,
	acceleration		= 0.058,
	turnRate			= 135,
	maxDamage			= 3365,

	weapons = {
		[1] = {
			name				= "M7APe8",
		},
		[2] = {
			name				= "M7HE",
		},
	},
	
	customParams = {
		maxammo				= 14,
		normaltex			= "unittextures/USM4ShermanA_normals.dds",
	},
}

local USM4A3105Sherman = ShermanBase:New{
	name				= "M4A3(105) Sherman",
	description			= "Close Support Tank",
	buildCostMetal		= 3450,
	maxDamage			= 3150,

	weapons = {
		[1] = {
			name				= "m4105mmhe",
		},
		[2] = {
			name				= "m4105mmsmoke",
		},
	},
	
	customParams = {
		maxammo				= 12,
		weapontoggle		= "smoke",
		cabfiresmoke		= true,
		turretturnspeed		= 10, -- manual traverse
		maxvelocitykmh		= 39,
		normaltex			= "unittextures/USM4ShermanB_normals.dds",
	},
}

return lowerkeys({
	["USM4A4Sherman"] = USM4A4Sherman,
	["USM4Jumbo"] = USM4Jumbo,
	["USM4A376Sherman"] = USM4A376Sherman,
	["USM4A3105Sherman"] = USM4A3105Sherman,
})
