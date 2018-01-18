
local items = {}

local function play_refine(player)
	local seq = {
		{"mp_shipment_steal","hack_loop",10}
	}
	
	vRPclient.playAnim(player,{true,seq,false})
end

-- 2681.6286621094,y=2796.240234375,z=40.69828414917

local diamond_choices = {}
diamond_choices["Cut"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	local source = vRP.getUserSource(user_id)
	if user_id ~= nil then
		if vRP.tryGetInventoryItem(user_id,"Diamond",1) then
			vRPclient.notify(player,{"~g~ Cutting Diamond (20 secs)."})
			play_refine(player)
			--[[vRP.getUserIdentity({user_id, function(identity)
				TriggerClientEvent("sendProximityMessageMe", -1, source, identity.firstname .. " " .. identity.name, "begins cutting a diamond.")
			end})--]]
			vRP.closeMenu(player)
			Wait(20000)
			vRP.giveInventoryItem(user_id,"Diamond2",1,"~g~ +1 Cut Diamond.")
			--[[vRP.getUserIdentity({user_id, function(identity)
				TriggerClientEvent("sendProximityMessageMe", -1, source, identity.firstname .. " " .. identity.name, "finishes cutting a diamond.")
			end})--]]
			vRPclient.setGPS(-624.6025390625,-230.97637939453)
			vRPclient.notify({"~g~GPS Set to Diamond Buyer!"})
			vRPclient.stopAnim(false)
		end
	end
end}

local copper_choices = {}
copper_choices["Refine"] = {function(player,choice)
	local user_id = vRP.getUserId(player)
	local source = vRP.getUserSource(user_id)
	--local refinePos = {2681.6286621094,2796.240234375,40.698284149175}
	if user_id ~= nil then
	--local distance = GetDistanceBetweenCoords(GetEntityCoords(player), 2681.6286621094,2796.240234375,40.698284149175, true)
	--if (distance <= 3) then
		if vRP.tryGetInventoryItem(user_id,"Copper",1) then
			vRPclient.notify(player,{"~g~ Refining 1 Ton of Copper (15 secs)."})
			play_refine(player)
			--[[vRP.getUserIdentity({user_id, function(identity)
			TriggerClientEvent("sendProximityMessageMe", -1, source, identity.firstname .. " " .. identity.name, "finishes cutting a diamond.")
		end})--]]
			vRP.closeMenu(player)
			Wait(15000)
			vRP.giveInventoryItem(user_id,"Copper2",1,"~g~ +1 Refined Copper.")
			--[[vRP.getUserIdentity({user_id, function(identity)
			TriggerClientEvent("sendProximityMessageMe", -1, source, identity.firstname .. " " .. identity.name, "finishes cutting a diamond.")
		end})--]]
			vRPclient.setGPS(-624.6025390625,-230.97637939453)
			vRPclient.notify({"~g~GPS Set to Copper Buyer!"})
			vRPclient.stopAnim()
		end
	end
end}

items["Coal"] = {"Ton of Coal", "Coal, a basic fuel.", nil, 0.10} -- 1 ton of coal // 5 oz
items["Copper"] = {"Unrefined Copper", "Copper, common - unrefined.", function(args) return copper_choices end, 0.02}
items["Copper2"] = {"Copper", "Copper, common.", nil, 0.02}
items["Iron"] = {"Unrefined Iron", "Iron, uncommon - unrefined.", nil, 0.10}
items["Iron2"] = {"Ton of Iron", "Iron, uncommon.", nil, 0.10} -- 1 ton of coal // 5 oz
items["Gold"] = {"Unrefined Gold", "Gold, very rare - unrefined.", nil, 0.001} -- grams
items["Gold2"] = {"Gold", "Gold, very rare.", nil, 0.001} -- grams
items["Silver"] = {"Unrefined Silver", "Silver, rare - unrefined.", nil, 0.02}
items["Silver2"] = {"Silver", "Silver, rare.", nil, 0.02}
items["Diamond"] = {"Uncut Diamond", "Diamond, ultra rare - unpolished, uncut.", function(args) return diamond_choices end, 0.00029}
items["Diamond2"] = {"Diamond", "Diamond, ultra rare.", nil, 0.00029}

return items