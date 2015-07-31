
function makeInserter(name)
	local obj = util.table.deepcopy(data.raw["inserter"][name .. "-inserter"])
	obj.name = "cursed-" .. name .. "-inserter"
	obj.minable.result = "cursed-" .. name .. "-inserter"
	obj.energy_per_movement = obj.energy_per_movement * 3
	obj.energy_per_rotation = obj.energy_per_rotation * 3
	if name == "burner" then
		obj.energy_source.effectivity = obj.energy_source.effectivity / 3
	else
		obj.energy_source.drain = (tonumber(string.sub(obj.energy_source.drain,1,-3)) * 3) .. string.sub(obj.energy_source.drain,-2)
	end
	obj.icon = "__Cursed-PI__/graphics/icons/" .. name .. "-inserter/cursed-" .. name .. "-inserter.png"
	data.raw[obj.type][obj.name] = obj
	for i1 = -1, 1 do --1
		for j1 = -1, 1 do -- 1
			for i2 = -1, 1 do
				for j2 = -1, 1 do
					if not (i1 == i2 and j1 == j2) and not (i1 == 0 and j1 == 0) and not(i2 == 0 and j2 == 0) then
						local obj = util.table.deepcopy(data.raw["inserter"]["cursed-" .. name .. "-inserter"])
						obj.name = "cursed-" .. name .. "-inserter_" .. 3*(i1+1)+(j1+2) .. "_" .. 3*(i2+1)+(j2+2)
						if data.raw[obj.type][obj.name] == nil then
							obj.pickup_position = {j1, i1}
							obj.insert_position = {j2*1.2, i2*1.2}
							obj.order = "c"
							data.raw[obj.type][obj.name] = obj
						end
					end
				end
			end
		end
	end
end

makeInserter("burner")
makeInserter("basic")
makeInserter("smart")
makeInserter("fast")


local obj = util.table.deepcopy(data.raw["inserter"]["long-handed-inserter"])
obj.name = "cursed-long-handed-inserter"
obj.minable.result = "cursed-long-handed-inserter"
obj.energy_per_movement = obj.energy_per_movement * 3
obj.energy_per_rotation = obj.energy_per_rotation * 3
obj.energy_source.drain = (tonumber(string.sub(obj.energy_source.drain,1,-3)) * 3) .. string.sub(obj.energy_source.drain,-2)
obj.icon = "__Cursed-PI__/graphics/icons/long-handed-inserter/cursed-long-handed-inserter.png"
data.raw[obj.type][obj.name] = obj
for i1 = -1, 1 do
	for j1 = -1, 1 do
		for i2 = -1, 1 do
			for j2 = -1, 1 do
				if not (i1 == i2 and j1 == j2) and not (i1 == 0 and j1 == 0) and not(i2 == 0 and j2 == 0) then
					local obj = util.table.deepcopy(data.raw["inserter"]["cursed-long-handed-inserter"])
					obj.name = "cursed-long-handed-inserter_" .. 3*(i1+1)+(j1+2) .. "_" .. 3*(i2+1)+(j2+2)
					if data.raw[obj.type][obj.name] == nil then
						obj.pickup_position = {j1*2, i1*2}
						obj.insert_position = {j2*2.2, i2*2.2}
						obj.order = "c"
						data.raw[obj.type][obj.name] = obj
					end
				end
			end
		end
	end
end
