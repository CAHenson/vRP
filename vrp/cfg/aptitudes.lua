
local cfg = {}

-- exp notes:
-- levels are defined by the amount of xp
-- with a step of 5: 5|15|30|50|75 (by default)
-- total exp for a specific level, exp = step*lvl*(lvl+1)/2
-- level for a specific exp amount, lvl = (sqrt(1+8*exp/step)-1)/2

-- define groups of aptitudes
--- _title: title of the group
--- map of aptitude => {title,init_exp,max_exp}
---- max_exp: -1 for infinite exp
cfg.gaptitudes = {
  ["physical"] = {
    _title = "Physical",
    ["strength"] = {"Strength", 30, 275} -- required, level 3 to 6 (by default, can carry 10kg per level)
  },
  ["science"] = {
    _title = "Science",
    ["chemicals"] = {"Chemistry", 0, -1}, -- example
    ["mathematics"] = {"Mathematics", 0, -1} -- example
  },
  ["skill"] = {
	_title = "Skills",
	["mining"]={"Mining", 0, -1},
	["refining"]={"Refining", 0, -1}
  },
  ["laboratory"] = {
    _title = "Drug Manufacturing",
	["cocaine"] = {"Cocaine Processing", 0, -1},
	["weed"] = {"Marijuana Processing", 0, -1},
	["lsd"] = {"LSD Synthesizing", 0, -1}
  },
  ["hacker"] = {
    _title = "Hacking",
	["logic"] = {"Logic", 0, -1},
	["c++"] = {"C++", 0, -1},
	["lua"] = {"LUA", 0, -1},
	["hacking"] = {"Hacking", 0, -1}
  }
}

return cfg
