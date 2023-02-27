
#as: player

scoreboard players remove py pigedit.data 1

scoreboard players operation pz pigedit.data = dz pigedit.data
function pigedit:cmd/fill/set_z

execute if score py pigedit.data matches 0.. positioned ~ ~1 ~ run function pigedit:cmd/fill/set_y