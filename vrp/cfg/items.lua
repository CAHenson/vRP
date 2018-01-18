-- define items, see the Inventory API on github

local cfg = {}
-- see the manual to understand how to create parametric items
-- idname = {name or genfunc, description or genfunc, genfunc choices or nil, weight or genfunc}
-- a good practice is to create your own item pack file instead of adding items here
cfg.items = {
  ["benzoilmetilecgonina"] = {"Benzoilmetilecgonina", "Used to make Cocaine.", nil, 0.01}, -- no choices
  ["seeds"] = {"Seeds", "Some Weed seeds.", nil, 0.01}, -- no choices
  ["harness"] = {"Lysergic Acid Diethylamide", "Used to make LSD.", nil, 0.01}, -- no choices
  ["AK47"] = {"AK47", "A versatile russian 7.62 assault rifle.", nil, 0.01}, -- no choices
  ["M4A1"] = {"M4A1", "Light and short 5.56 magazine fed carbine.", nil, 0.01}, -- no choices
  ["credit"] = {"Credit Card", "Credit Card.", nil, 0.01}, -- no choices
  ["driver"] = {"Driver license Card", "Driver's License.", nil, 0.01}, -- no choices
  ["bank_money"] = {"Bank's Money", "$.", nil, 0}, -- no choices
  ["cargo"] = {"Airport Cargo", "Cargo to be delivered via pilot.", nil, 0.01},
  ["pilotlic"] = {"Pilot License", "License to fly in SA.", nil, 0.01}
}

-- load more items function
local function load_item_pack(name)
  local items = module("cfg/item/"..name)
  if items then
    for k,v in pairs(items) do
      cfg.items[k] = v
    end
  else
    print("[vRP] item pack ["..name.."] not found")
  end
end

-- PACKS
load_item_pack("required")
load_item_pack("food")
load_item_pack("drugs")
load_item_pack("ores")

return cfg
