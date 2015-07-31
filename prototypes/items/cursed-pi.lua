
local obj = util.table.deepcopy(data.raw["item"]["burner-inserter"])
obj.name = "cursed-burner-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/burner-inserter/cursed-burner-inserter.png"
obj.place_result = "cursed-burner-inserter"
data.raw[obj.type][obj.name] = obj

local obj = util.table.deepcopy(data.raw["item"]["basic-inserter"])
obj.name = "cursed-basic-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/basic-inserter/cursed-basic-inserter.png"
obj.place_result = "cursed-basic-inserter"
data.raw[obj.type][obj.name] = obj

local obj = util.table.deepcopy(data.raw["item"]["long-handed-inserter"])
obj.name = "cursed-long-handed-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/long-handed-inserter/cursed-long-handed-inserter.png"
obj.place_result = "cursed-long-handed-inserter"
data.raw[obj.type][obj.name] = obj

local obj = util.table.deepcopy(data.raw["item"]["smart-inserter"])
obj.name = "cursed-smart-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/smart-inserter/cursed-smart-inserter.png"
obj.place_result = "cursed-smart-inserter"
data.raw[obj.type][obj.name] = obj

local obj = util.table.deepcopy(data.raw["item"]["fast-inserter"])
obj.name = "cursed-fast-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/fast-inserter/cursed-fast-inserter.png"
obj.place_result = "cursed-fast-inserter"
data.raw[obj.type][obj.name] = obj
