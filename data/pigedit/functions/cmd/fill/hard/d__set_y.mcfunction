
#as: player

scoreboard players operation .pz pigedit.data = .dz pigedit.data
function pigedit:cmd/fill/hard/e__set_z

scoreboard players remove .py pigedit.data 1

execute if score .py pigedit.data matches 1.. positioned ~ ~1 ~ run function pigedit:cmd/fill/hard/d__set_y