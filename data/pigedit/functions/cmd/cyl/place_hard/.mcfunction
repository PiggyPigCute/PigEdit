

scoreboard players operation .dx pigedit.data = .x pigedit.data
scoreboard players operation .dx pigedit.data *= #2 pigedit.data
scoreboard players add .dx pigedit.data 1
scoreboard players set .dz pigedit.data 1
scoreboard players operation .minx pigedit.data = .x0 pigedit.data
scoreboard players operation .minx pigedit.data -= .x pigedit.data
scoreboard players operation .minz pigedit.data = .z0 pigedit.data
scoreboard players operation .minz pigedit.data += .y pigedit.data
function pigedit:cmd/fill/mask/

scoreboard players operation .minz pigedit.data = .z0 pigedit.data
scoreboard players operation .minz pigedit.data -= .y pigedit.data
function pigedit:cmd/fill/mask/

scoreboard players operation .dx pigedit.data = .y pigedit.data
scoreboard players operation .dx pigedit.data *= #2 pigedit.data
scoreboard players add .dx pigedit.data 1
execute if score .y pigedit.data = .r pigedit.data run function pigedit:cmd/cyl/place_hard/first
execute unless score .y pigedit.data = .r pigedit.data run function pigedit:cmd/cyl/place_hard/normal

scoreboard players operation .x1 pigedit.data = .x pigedit.data

