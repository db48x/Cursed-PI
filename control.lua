require("defines")


game.on_init(function()
	for k,force in pairs(game.forces) do
		if force.technologies["automation"].researched == true then
			force.technologies["cursed-automation"].enabled = true
		end
		if force.technologies["electronics"].researched == true then
			force.technologies["cursed-electronics"].enabled = true
		end
		if force.technologies["logistics"].researched == true then
			force.technologies["cursed-logistics"].enabled = true
		end
	end
	if global.cursedPI == nil then
		global.cursedPI = {}
	end
end)


game.on_event(defines.events.on_built_entity, function(event)
	if event.created_entity.name == "cursed-burner-inserter" then
		showGui(event)
	elseif event.created_entity.name == "cursed-basic-inserter" then
		showGui(event)
	elseif event.created_entity.name == "cursed-long-handed-inserter" then
		showGui(event)
	elseif event.created_entity.name == "cursed-smart-inserter" then
		showGui(event)
	elseif event.created_entity.name == "cursed-fast-inserter" then
		showGui(event)
	end
end)


game.on_event(defines.events.on_gui_click, function(event)
	if string.sub(event.element.name,1,8) == "datosPI_" then
		if event.element.parent.name == "tablePI1" then
			local active = tonumber(string.sub(event.element.name,-1))
			for i = 1,9 do
				if i ~= 5 and i ~= active then
					event.element.parent["datosPI_" .. i].state = false
				end
			end
		elseif event.element.parent.name == "tablePI2" then
			local active = tonumber(string.sub(event.element.name,-1))
			for i = 1,9 do
				if i ~= 5 and i ~= active then
					event.element.parent["datosPI_" .. i].state = false
				end
			end
		elseif event.element.name == "datosPI_Accept" then
			local parent = event.element.parent
			local valueIn
			local valueOut 
			for i = 1,9 do
				if i ~= 5 then
					if parent["tablePI1"]["datosPI_" .. i].state == true then
						valueIn = i
					end
				end
			end
			for i = 1,9 do
				if i ~= 5 then
					if parent["tablePI2"]["datosPI_" .. i].state == true then
						valueOut = i
					end
				end
			end
			if valueIn ~= nil and valueOut ~= nil and valueIn ~= valueOut then
				local inserter = global.cursedPI[event.player_index]
				inserter.surface.create_entity{name=inserter.name .. "_" .. valueIn .. "_" .. valueOut,position = inserter.position,force = inserter.force}
				inserter.destroy()
			end
			global.cursedPI[event.player_index] = nil
			parent.parent.destroy()
		end
	end
end)

function showGui(event)
	local player = game.get_player(event.player_index)
	global.cursedPI[player.index] = event.created_entity
	local framePI = player.gui.center.add({ type="frame", name="framePI", direction="vertical" })
	framePI.add({ type="label", name="lbl1",caption={"entity-name."..event.created_entity.name} })
	local tablePI = framePI.add({ type="table", name="tablePI", colspan = 3,style="cursed-PI-table" })
	local tablePI1 = tablePI.add({ type="table", name="tablePI1", colspan = 5,style="cursed-PI-table" })
	tablePI.add({ type="label", name="lbl2",caption=" --> " })
	local tablePI2 = tablePI.add({ type="table", name="tablePI2", colspan = 5,style="cursed-PI-table" })
	makeTable(tablePI1,event.created_entity.name)
	makeTable(tablePI2,event.created_entity.name)
	tablePI.add({ type="label", name="lbl3",caption=" " })
	tablePI.add({ type="label", name="lbl4",caption=" " })
	tablePI.add({ type="label", name="lbl5",caption=" " })
	tablePI.add({ type="button", name="datosPI_Accept", caption = "Accept",style="button_style" })
end

function makeTable(parent,type)

	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="datosPI_1",state = false, style = "cursed-PI-" .. type .. "_hand" })
	else
		parent.add({ type="checkbox", name="framePI11", state = false, style = "cursed-PI-frame" })
	end
	parent.add({ type="checkbox", name="framePI21", state = false, style = "cursed-PI-frame" })
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="datosPI_2",state = false, style = "cursed-PI-" .. type .. "_hand" })
	else
		parent.add({ type="checkbox", name="framePI31", state = false, style = "cursed-PI-frame" })
	end
	parent.add({ type="checkbox", name="framePI41", state = false, style = "cursed-PI-frame" })
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="datosPI_3",state = false, style = "cursed-PI-" .. type .. "_hand" })
	else
		parent.add({ type="checkbox", name="framePI51", state = false, style = "cursed-PI-frame" })
	end
	
	parent.add({ type="checkbox", name="framePI12", state = false, style = "cursed-PI-frame" })
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="framePI22", state = false, style = "cursed-PI-frame" })
	else
		parent.add({ type="checkbox", name="datosPI_1",state = false, style = "cursed-PI-" .. type .. "_hand" })
	end
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="framePI32", state = false, style = "cursed-PI-frame" })
	else
		parent.add({ type="checkbox", name="datosPI_2",state = false, style = "cursed-PI-" .. type .. "_hand" })
	end
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="framePI42", state = false, style = "cursed-PI-frame" })
	else
		parent.add({ type="checkbox", name="datosPI_3",state = false, style = "cursed-PI-" .. type .. "_hand" })
	end
	parent.add({ type="checkbox", name="framePI52", state = false, style = "cursed-PI-frame" })
	
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="datosPI_4",state = false, style = "cursed-PI-" .. type .. "_hand" })
	else
		parent.add({ type="checkbox", name="framePI13", state = false, style = "cursed-PI-frame" })
	end
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="framePI23", state = false, style = "cursed-PI-frame" })
	else
		parent.add({ type="checkbox", name="datosPI_4",state = false, style = "cursed-PI-" .. type .. "_hand" })
	end
	parent.add({ type="checkbox", name="framePI33",state = false, style = "cursed-PI-" .. type .. "_base" })
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="framePI43", state = false, style = "cursed-PI-frame" })
	else
		parent.add({ type="checkbox", name="datosPI_6",state = false, style = "cursed-PI-" .. type .. "_hand" })
	end
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="datosPI_6",state = false, style = "cursed-PI-" .. type .. "_hand" })
	else
		parent.add({ type="checkbox", name="framePI53", state = false, style = "cursed-PI-frame" })
	end
	
	parent.add({ type="checkbox", name="framePI14", state = false, style = "cursed-PI-frame" })
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="framePI24", state = false, style = "cursed-PI-frame" })
	else
		parent.add({ type="checkbox", name="datosPI_7",state = false, style = "cursed-PI-" .. type .. "_hand" })
	end
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="framePI34", state = false, style = "cursed-PI-frame" })
	else
		parent.add({ type="checkbox", name="datosPI_8",state = false, style = "cursed-PI-" .. type .. "_hand" })
	end
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="framePI44", state = false, style = "cursed-PI-frame" })
	else
		parent.add({ type="checkbox", name="datosPI_9",state = false, style = "cursed-PI-" .. type .. "_hand" })
	end
	parent.add({ type="checkbox", name="framePI54", state = false, style = "cursed-PI-frame" })

	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="datosPI_7",state = false, style = "cursed-PI-" .. type .. "_hand" })
	else
		parent.add({ type="checkbox", name="framePI15", state = false, style = "cursed-PI-frame" })
	end
	parent.add({ type="checkbox", name="framePI25", state = false, style = "cursed-PI-frame" })
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="datosPI_8",state = false, style = "cursed-PI-" .. type .. "_hand" })
	else
		parent.add({ type="checkbox", name="framePI35", state = false, style = "cursed-PI-frame" })
	end
	parent.add({ type="checkbox", name="framePI45", state = false, style = "cursed-PI-frame" })
	if type == "cursed-long-handed-inserter" then
		parent.add({ type="checkbox", name="datosPI_9",state = false, style = "cursed-PI-" .. type .. "_hand" })
	else
		parent.add({ type="checkbox", name="framePI55", state = false, style = "cursed-PI-frame" })
	end
end