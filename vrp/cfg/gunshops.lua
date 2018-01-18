
local cfg = {}
-- list of weapons for sale
-- for the native name, see https://wiki.fivem.net/wiki/Weapons (not all of them will work, look at client/player_state.lua for the real weapon list)
-- create groups like for the garage config
-- [native_weapon_name] = {display_name,body_price,ammo_price,description}
-- ammo_price can be < 1, total price will be rounded

-- _config: blipid, blipcolor, permissions (optional, only users with the permission will have access to the shop)

cfg.gunshop_types = {
["Paleto"] = {
    _config = {blipid=110,blipcolor=1},
    ["WEAPON_BOTTLE"] = {"Bottle",5,0,""},
    ["WEAPON_BAT"] = {"Bat",45,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",100,0,""},
    ["WEAPON_KNIFE"] = {"Knife",120,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",537,0.50,""},
    ["WEAPON_PISTOL"] = {"Pistol",675,1,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",525,2,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1000,8,""},
    ["WEAPON_DAGGER"] = {"Dagger",197,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",19,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",99,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Switchblade",300,0,""},
    ["WEAPON_MACHETE"] = {"Machete",40,0,""},
    ["WEAPON_FLARE"] = {"Flare",10,10,""},
    ["WEAPON_MARKSMANRIFLE"] = {"Marksman Rifle",1999,3,""},
    ["WEAPON_SNIPERRIFLE"] = {"Sniper Rifle",2499,4,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",699,3,""},
    ["WEAPON_FLASHLIGHT"] = {"Flashlight",15,0,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",35,0,""}
  },
["Pilbox"] = {
    _config = {blipid=110,blipcolor=1},
    ["WEAPON_BOTTLE"] = {"Bottle",5,0,""},
    ["WEAPON_BAT"] = {"Bat",45,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",100,0,""},
    ["WEAPON_KNIFE"] = {"Knife",120,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",537,0.50,""},
    ["WEAPON_PISTOL"] = {"Pistol",675,1,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",525,2,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1000,8,""},
    ["WEAPON_DAGGER"] = {"Dagger",197,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",19,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",99,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Switchblade",300,0,""},
    ["WEAPON_MACHETE"] = {"Machete",40,0,""},
    ["WEAPON_FLARE"] = {"Flare",10,10,""},
    ["WEAPON_MARKSMANRIFLE"] = {"Marksman Rifle",1999,3,""},
    ["WEAPON_SNIPERRIFLE"] = {"Sniper Rifle",2499,4,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",699,3,""},
    ["WEAPON_FLASHLIGHT"] = {"Flashlight",15,0,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",35,0,""}
  },
  ["eastlossantos1"] = {
    _config = {blipid=110,blipcolor=1},
    ["WEAPON_BOTTLE"] = {"Bottle",5,0,""},
    ["WEAPON_BAT"] = {"Bat",45,0,""},
    ["WEAPON_KNUCKLE"] = {"Knuckle",100,0,""},
    ["WEAPON_KNIFE"] = {"Knife",120,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",537,0.50,""},
    ["WEAPON_PISTOL"] = {"Pistol",675,1,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",525,2,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",1000,8,""},
    ["WEAPON_DAGGER"] = {"Dagger",197,0,""},
    ["WEAPON_HAMMER"] = {"Hammer",19,0,""},
    ["WEAPON_HATCHET"] = {"Hatchet",99,0,""},
    ["WEAPON_SWITCHBLADE"] = {"Switchblade",300,0,""},
    ["WEAPON_MACHETE"] = {"Machete",40,0,""},
    ["WEAPON_FLARE"] = {"Flare",10,10,""},
    ["WEAPON_MARKSMANRIFLE"] = {"Marksman Rifle",1999,3,""},
    ["WEAPON_SNIPERRIFLE"] = {"Sniper Rifle",2499,4,""},
    ["WEAPON_PUMPSHOTGUN"] = {"Pump Shotgun",699,3,""},
    ["WEAPON_FLASHLIGHT"] = {"Flashlight",15,0,""},
    ["WEAPON_FLAREGUN"] = {"Flaregun",35,0,""}
  },
  ["policeloadout"] = {
    _config = {blipid=110,blipcolor=74, permissions = {"police.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"Tazer",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",0,0,""},
	["WEAPON_ADVANCEDRIFLE"] = {"Carbine",0,0,""},
    ["WEAPON_KNIFE"] = {"Knife",0,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",0,0,""},
    ["WEAPON_PISTOL"] = {"Pistol",0,0,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",0,0,""},
    ["WEAPON_HEAVYSNIPER"] = {"Heavy Rifle",0,0,""},
    ["WEAPON_HEAVYSHOTGUN"] = {"Heavy Shotgun",0,0,""}
  },
  ["Cadet"] = {
    _config = {blipid=110,blipcolor=74, permissions = {"Cadet.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"Tazer",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",0,0,""},
	["WEAPON_ADVANCEDRIFLE"] = {"Carbine",0,0,""},
    ["WEAPON_KNIFE"] = {"Knife",0,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",0,0,""},
    ["WEAPON_PISTOL"] = {"Pistol",0,0,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",0,0,""},
    ["WEAPON_HEAVYSNIPER"] = {"Heavy Rifle",0,0,""},
    ["WEAPON_HEAVYSHOTGUN"] = {"Heavy Shotgun",0,0,""}
  },
  ["SWAT"] = {
    _config = {blipid=110,blipcolor=74, permissions = {"SWAT.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"Tazer",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",0,0,""},
	["WEAPON_ADVANCEDRIFLE"] = {"Carbine",0,0,""},
    ["WEAPON_KNIFE"] = {"Knife",0,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",0,0,""},
    ["WEAPON_PISTOL"] = {"Pistol",0,0,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",0,0,""},
    ["WEAPON_HEAVYSNIPER"] = {"Heavy Rifle",0,0,""},
    ["WEAPON_HEAVYSHOTGUN"] = {"Heavy Shotgun",0,0,""}
  },
  ["Bounty_Hunter"] = {
    _config = {blipid=150,blipcolor=1, permissions = {"Bounty.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"Tazer",0,0,""},
    ["WEAPON_COMBATPISTOL"] = {"Combat Pistol",0,0,""},
	["WEAPON_ADVANCEDRIFLE"] = {"Carbine",0,0,""},
    ["WEAPON_KNIFE"] = {"Knife",0,0,""},
    ["WEAPON_SNSPISTOL"] = {"Pistol",0,0,""},
    ["WEAPON_PISTOL"] = {"Pistol",0,0,""},
    ["WEAPON_HEAVYPISTOL"] = {"Heavy Pistol",0,0,""},
    ["WEAPON_HEAVYSNIPER"] = {"Heavy Rifle",0,0,""},
    ["WEAPON_HEAVYSHOTGUN"] = {"Heavy Shotgun",0,0,""}
  },
  ["emsloadout"] = {
    _config = {blipid=446,blipcolor=74, permissions = {"ems.loadshop"}},
    ["WEAPON_PETROLCAN"] = {"Petrol",0,0,""},
   	["WEAPON_FLAREGUN"] = {"Flare Gun",0,0,""},
	["WEAPON_FLASHLIGHT"] = {"Flashlight",0,0,""},
    ["WEAPON_FLARE"] = {"Flare",0,0,""},
    ["WEAPON_NIGHTSTICK"] = {"Nighstick",0,0,""},
	["WEAPON_STUNGUN"] = {"Tazer",0,0,""}
   },
  ["bombsticky"] = {
    _config = {blipid=110,blipcolor=1},
   ["WEAPON_STICKYBOMB"] = {"Sticky bomb",25000,25000,""} 
 }
}
-- list of gunshops positions

cfg.gunshops = {
  {"emsloadout", 232.89363098145,-1368.3338623047,39.534381866455}, -- spawn hospital
  {"emsloadout", 1837.8341064453,3671.3837890625,34.276763916016}, -- sandy shores
  {"emsloadout", -246.91954040527,6330.349609375,32.42618560791}, -- paleto
  {"eastlossantos1", 844.299, -1033.26, 28.1949},
  {"SWAT", 461.33551025391,-981.11071777344,30.689584732056},
  {"Cadet", 461.33551025391,-981.11071777344,30.689584732056},
  {"policeloadout", 461.33551025391,-981.11071777344,30.689584732056},--- main pd
  {"Bounty_Hunter", 563.62060546875,-3126.9626464844,18.768604278564}, 
  {"policeloadout", 1851.7342529297,3683.7416992188,34.267044067383}, -- sandy shores
  {"policeloadout", -442.724609375,6012.6293945313,31.716390609741}, -- paleto
  {"bombsticky", 708.847778320313,-959.231750488281,30.3953418731689},
  {"Paleto", -331.50210571289,6082.5063476563,31.454769134521}, -- Paleto
  {"Pilbox", 22.279336929321,-1107.068359375,29.797027587891}
}

return cfg
