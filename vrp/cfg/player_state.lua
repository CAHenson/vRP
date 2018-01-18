
local cfg = {}

-- define the first spawn position/radius of the player (very first spawn on the server, or after death)
cfg.spawn_enabled = true -- set to false to disable the feature
--cfg.spawn_position = {-266.07498168945,-961.10437011719,31.223129272461}
cfg.spawn_position = {-544.74261474609,-204.75337219238,38.215114593506}
cfg.spawn_radius = 1

-- customization set when spawning for the first time
-- see https://wiki.fivem.net/wiki/Peds
-- mp_m_freemode_01 (male)
-- mp_f_freemode_01 (female)
cfg.default_customization = {
  model = "mp_m_freemode_01" 
  --model = "S_M_Y_Valet_01" 
}

-- init default ped parts


for i=0,19 do
--"customization":{"1":[0,0,2],"2":[0,0,2],"3":[0,0,2],"4":[0,0,2],"5":[0,0,2],"6":[0,0,2],"7":[0,0,2],"8":[0,0,2],"9":[0,1,2],"10":[0,0,2],"11":[0,0,2],"12":[0,2,0],"13":[0,2,0],"14":[0,2,255],"15":[0,2,100],"16":[0,2,0],"17":[0,2,0],"18":[0,2,0],"19":[0,2,0],"20":[0,2,255],"p3":[-1,0],"p2":[-1,0],"p5":[-1,0],"p4":[-1,0],"p6":[-1,0],"p7":[-1,0],"p10":[-1,0],"p9":[-1,0],"p8":[-1,0],"p0":[-1,0],"p1":[-1,0],"modelhash":1885233650,"0":[0,0,2]}
  --,"customization":{"1":[0,0,2],"2":[49,0,1],"3":[15,0,2],"4":[61,0,2],"5":[0,0,2],"6":[34,0,2],"7":[0,0,2],"8":[57,0,2],"9":[0,1,2],"10":[0,0,2],"11":[91,0,2],"12":[0,2,0],"13":[0,2,0],"14":[0,1,255],"15":[0,2,228],"16":[0,2,0],"17":[0,2,2],"18":[0,2,8],"19":[0,2,32],"20":[0,2,255],"p2":[-1,0],"p3":[-1,0],"p0":[-1,0],"p1":[-1,0],"p7":[-1,0],"p6":[-1,0],"p5":[-1,0],"p4":[-1,0],"0":[0,0,2],"p8":[-1,0],"p9":[-1,0],"p10":[-1,0],"modelhash":1885233650}
  cfg.default_customization[i] = {0,0}
end

--[[
cfg.default_customization[0] = {0,0}
cfg.default_customization[1] = {0,0,2}
cfg.default_customization[2] = {49,0,1}
cfg.default_customization--]]
cfg.clear_phone_directory_on_death = false
cfg.lose_aptitudes_on_death = false

return cfg
 -- {1151.2432861328,-1526.7790527344,34.843448638916}