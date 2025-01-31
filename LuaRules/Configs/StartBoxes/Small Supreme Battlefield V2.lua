local boxes = {
	{
		{0, 5728},
		{242, 5631},
		{361, 5361},
		{432, 5308},
		{450, 5136},
		{522, 5092},
		{598, 5212},
		{539, 5376},
		{446, 5460},
		{312, 5765},
		{0, 5860},
		{0, 6596},
		{1670, 6676},
		{1751, 6576},
		{1892, 6590},
		{1962, 6717},
		{2331, 6905},
		{2488, 6885},
		{2584, 6976},
		{3380, 6976},
		{3345, 6801},
		{3286, 6667},
		{3334, 6388},
		{3431, 6160},
		{2555, 5516},
		{2397, 5688},
		{2251, 5806},
		{2230, 5955},
		{2244, 6138},
		{2214, 6257},
		{1614, 5942},
		{1381, 5553},
		{1355, 5254},
		{1512, 5030},
		{1604, 4756},
		{1624, 4561},
		{1495, 4324},
		{1348, 4150},
		{1227, 4132},
		{1166, 4163},
		{1154, 4258},
		{1071, 4495},
		{1231, 4851},
		{1143, 4995},
		{1042, 5068},
		{935, 5078},
		{637, 4908},
		{457, 4534},
		{434, 4210},
		{501, 3967},
		{601, 3831},
		{433, 3548},
		{347, 3520},
		{250, 3579},
		{158, 3713},
		{274, 4111},
		{115, 4376},
		{0, 4221},
	},
	{
		{3380, 6976},
		{2584, 6976},
		{2528, 7109},
		{2348, 7144},
		{2241, 7030},
		{2331, 6905},
		{1962, 6717},
		{1937, 6840},
		{1842, 6861},
		{1652, 6784},
		{1670, 6676},
		{0, 6596},
		{0, 7636},
		{123, 7588},
		{189, 7440},
		{393, 7481},
		{365, 7703},
		{376, 7860},
		{309, 7957},
		{327, 8192},
		{3809, 8192},
		{3725, 8053},
		{3683, 7885},
		{3438, 7607},
		{3368, 7344},
		{3359, 7115},
	},
	{
		{396, 1240},
		{261, 1347},
		{198, 1504},
		{194, 1707},
		{213, 1919},
		{290, 2052},
		{446, 1928},
		{573, 1861},
		{651, 1724},
		{602, 1519},
		{453, 1347},
		{423, 1279},
	},
}

local starts = {
	{2578, 5868},
	{2617, 7522},
	{1152, 5141},
	{400, 6036},
	{234, 1705},
}


if not Spring.Utilities.Gametype.isBigTeams() then
	-- no island
	boxes[3] = nil
	starts[5] = nil
end

local mapX = Game.mapSizeX
local mapZ = Game.mapSizeZ

local boxes_mirrored = {}
for i = 1, #boxes do
	local box_mirrored = {}
	local box = boxes[i]
	for j = 1, #box do
		local vertex = box[j]
		box_mirrored[j] = {mapX - vertex[1], mapZ - vertex[2]}
	end
	boxes_mirrored[i] = box_mirrored
end

local starts_mirrored = {}
for i = 1, #starts do
	local start = starts[i]
	starts_mirrored[i] = {mapX - start[1], mapZ - start[2]}
end

return {
	[0] = {
		nameLong = "South-West",
		nameShort = "SW",
		startpoints = starts,
		boxes = boxes,
	},
	[1] = {
		nameLong = "North-East",
		nameShort = "NE",
		startpoints = starts_mirrored,
		boxes = boxes_mirrored,
	},
}, {2}