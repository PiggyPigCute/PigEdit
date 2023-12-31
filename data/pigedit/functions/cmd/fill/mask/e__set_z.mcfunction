
#as: player

function pigedit:cmd/fill/mask/f__macro_setblock with storage pigedit:data data.var

scoreboard players remove .pz pigedit.data 1

execute if score .pz pigedit.data matches 1.. positioned ~ ~ ~1 run function pigedit:cmd/fill/mask/e__set_z