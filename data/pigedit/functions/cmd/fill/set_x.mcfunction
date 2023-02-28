
#as: player


scoreboard players operation py pigedit.data = dy pigedit.data
function pigedit:cmd/fill/set_y

scoreboard players remove px pigedit.data 1

execute if score px pigedit.data matches 0.. positioned ~1 ~ ~ run function pigedit:cmd/fill/set_x