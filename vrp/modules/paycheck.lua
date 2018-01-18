local Proxy = module("vrp", "lib/Proxy")

RegisterServerEvent('paycheck:salary')
AddEventHandler('paycheck:salary', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"police.paycheck") then
		vRP.giveMoney(user_id,0)
		vRPclient.notify(source,{"Payday: ~g~$0"})
	end		
	if vRP.hasPermission(user_id,"emergency.paycheck") then
		vRP.giveMoney(user_id,1250)
		vRPclient.notify(source,{"Payday: ~g~$1250"})
	end
	if vRP.hasPermission(user_id,"repair.paycheck") then
		vRP.giveMoney(user_id,675)
		vRPclient.notify(source,{"Payday: ~g~$675"})
	end
	if vRP.hasPermission(user_id,"Chief.paycheck") then
		vRP.giveMoney(user_id,3000)
		vRPclient.notify(source,{"Payday: ~g~$3000"})
	end
	if vRP.hasPermission(user_id,"Commander.paycheck") then
		vRP.giveMoney(user_id,4000)
		vRPclient.notify(source,{"Payday: ~g~$4000"})
	end
	if vRP.hasPermission(user_id,"Captain.paycheck") then
		vRP.giveMoney(user_id,2500)
		vRPclient.notify(source,{"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"Lieutenant.paycheck") then
		vRP.giveMoney(user_id,2500)
		vRPclient.notify(source,{"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"Detective.paycheck") then
		vRP.giveMoney(user_id,2250)
		vRPclient.notify(source,{"Payday: ~g~$2250"})
	end
	if vRP.hasPermission(user_id,"Sergeant.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Payday: ~g~$2000"})
	end
	if vRP.hasPermission(user_id,"uber.paycheck") then
		vRP.giveMoney(user_id,650)
		vRPclient.notify(source,{"Payday: ~g~$650"})
	end
	if vRP.hasPermission(user_id,"Lawyer.paycheck") then
		vRP.giveMoney(user_id,1300)
		vRPclient.notify(source,{"Payday: ~g~$1300"})
	end
	if vRP.hasPermission(user_id,"delivery.paycheck") then
		vRP.giveMoney(user_id,550)
		vRPclient.notify(source,{"Deliver those Sandwiches, Payday: ~g~$550"})
	end
	if vRP.hasPermission(user_id,"citizen.paycheck") then
		vRP.giveMoney(user_id,500)
		vRPclient.notify(source,{"Get a job! Payday: ~g~$500"})
	end
	if vRP.hasPermission(user_id,"SWAT.paycheck") then
		vRP.giveMoney(user_id,2500)
		vRPclient.notify(source,{"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"sheriff.paycheck") then
		vRP.giveMoney(user_id,2500)
		vRPclient.notify(source,{"Payday: ~g~$2500"})
	end
	if vRP.hasPermission(user_id,"SASPCadet.paycheck") then
		vRP.giveMoney(user_id,800)
		vRPclient.notify(source,{"Payday, Cadet: ~g~$800"})
	end	
	if vRP.hasPermission(user_id,"SASPTrooper.paycheck") then
		vRP.giveMoney(user_id,850)
		vRPclient.notify(source,{"Payday, Trooper: ~g~$850"})
	end	
	if vRP.hasPermission(user_id,"SASPTrooperFC.paycheck") then
		vRP.giveMoney(user_id,950)
		vRPclient.notify(source,{"Payday, Trooper First Class: ~g~$950"})
	end	
	if vRP.hasPermission(user_id,"SASPSergeant.paycheck") then
		vRP.giveMoney(user_id,1050)
		vRPclient.notify(source,{"Payday, Sergeant: ~g~$1050"})
	end	
	if vRP.hasPermission(user_id,"SASPLt.paycheck") then
		vRP.giveMoney(user_id,1150)
		vRPclient.notify(source,{"Payday, Lieutenant: ~g~$1150"})
	end	
	if vRP.hasPermission(user_id,"SASPCaptain.paycheck") then
		vRP.giveMoney(user_id,1250)
		vRPclient.notify(source,{"Payday, Captain: ~g~$1250"})
	end	
	if vRP.hasPermission(user_id,"Cadet.paycheck") then
		vRP.giveMoney(user_id,2000)
		vRPclient.notify(source,{"Payday: ~g~$2000"})
	end
	if vRP.hasPermission(user_id,"trafficguard.paycheck") then
		vRP.giveMoney(user_id,1500)
		vRPclient.notify(source,{"Payday: ~g~$1500"})
	end
	if vRP.hasPermission(user_id,"bankdriver.paycheck") then
		vRP.giveMoney(user_id,700)
		vRPclient.notify(source,{"Payday: ~g~$700"})
	end
	if vRP.hasPermission(user_id,"pilot.paycheck") then
		vRP.giveMoney(user_id,800)
		vRPclient.notify(source,{"Payday: $800"})
	end
end)

RegisterServerEvent("chatMessage")
AddEventHandler("chatMessage", function(source, n, message)
	if message == "/payme" then
		local user_id = vRP.getUserId(source)
		CancelEvent()
		vRP.tryFullPayment(user_id,25)
		vRPclient.notify(source,{"Bills: ~r~$-20"})
		vRPclient.notify(source,{"Tax: ~r~$-5"})
		local balance = vRP.getBankMoney(user_id)
		local interestrate = math.ceil(vRP.getBankMoney(user_id) * ((6 / 100) / 52))
		vRP.setBankMoney(user_id,vRP.getBankMoney(user_id) + interestrate)
		vRPclient.notify(source,{"Interest Earned: ~g~$" .. interestrate})
	end
end)

RegisterServerEvent('paycheck:bonus')
AddEventHandler('paycheck:bonus', function()
  	local user_id = vRP.getUserId(source)
	if vRP.hasPermission(user_id,"user.paycheck") then
		--vRP.giveMoney(user_id,100)
		--vRPclient.notify(source,{"Gift for play: ~g~$100"})
	end
	if vRP.hasPermission(user_id,"user.paycheck") then
		vRP.tryFullPayment(user_id,25)
		vRPclient.notify(source,{"Bills: ~r~$-20"})
		vRPclient.notify(source,{"Tax: ~r~$-5"})
		local balance = vRP.getBankMoney(user_id)
		local interestrate = math.ceil(vRP.getBankMoney(user_id) * ((6 / 100) / 52))
		vRP.setBankMoney(user_id,vRP.getBankMoney(user_id) + interestrate)
		vRPclient.notify(source,{"Interest Earned: ~g~$" .. interestrate})
	end
end)