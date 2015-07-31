
local obj = util.table.deepcopy(data.raw["recipe"]["burner-inserter"])
obj.name = "cursed-burner-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/burner-inserter/cursed-burner-inserter.png"
for _,ing in ipairs(obj.ingredients) do
	ing[2] = ing[2] * 3
end
obj.results = {}
obj.results[1] = {}
obj.results[1].type = "item"
obj.results[1].name = "cursed-burner-inserter"
obj.results[1].amount = 1
data.raw[obj.type][obj.name] = obj

local obj = util.table.deepcopy(data.raw["recipe"]["basic-inserter"])
obj.name = "cursed-basic-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/basic-inserter/cursed-basic-inserter.png"
for _,ing in ipairs(obj.ingredients) do
	ing[2] = ing[2] * 3
end
obj.results = {}
obj.results[1] = {}
obj.results[1].type = "item"
obj.results[1].name = "cursed-basic-inserter"
obj.results[1].amount = 1
data.raw[obj.type][obj.name] = obj

local obj = util.table.deepcopy(data.raw["recipe"]["long-handed-inserter"])
obj.name = "cursed-long-handed-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/long-handed-inserter/cursed-long-handed-inserter.png"
for _,ing in ipairs(obj.ingredients) do
	ing[2] = ing[2] * 3
end
obj.results = {}
obj.results[1] = {}
obj.results[1].type = "item"
obj.results[1].name = "cursed-long-handed-inserter"
obj.results[1].amount = 1
data.raw[obj.type][obj.name] = obj

local obj = util.table.deepcopy(data.raw["recipe"]["smart-inserter"])
obj.name = "cursed-smart-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/smart-inserter/cursed-smart-inserter.png"
for _,ing in ipairs(obj.ingredients) do
	ing[2] = ing[2] * 3
end
obj.results = {}
obj.results[1] = {}
obj.results[1].type = "item"
obj.results[1].name = "cursed-smart-inserter"
obj.results[1].amount = 1
data.raw[obj.type][obj.name] = obj

local obj = util.table.deepcopy(data.raw["recipe"]["fast-inserter"])
obj.name = "cursed-fast-inserter"
obj.icon = "__Cursed-PI__/graphics/icons/fast-inserter/cursed-fast-inserter.png"
for _,ing in ipairs(obj.ingredients) do
	ing[2] = ing[2] * 3
end
obj.results = {}
obj.results[1] = {}
obj.results[1].type = "item"
obj.results[1].name = "cursed-fast-inserter"
obj.results[1].amount = 1
data.raw[obj.type][obj.name] = obj
