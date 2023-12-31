
#as: player

scoreboard players operation .py pigedit.data = .dy pigedit.data
function pigedit:cmd/fill/mask/d__set_y

scoreboard players remove .px pigedit.data 1

execute if score .px pigedit.data matches 1.. positioned ~1 ~ ~ run function pigedit:cmd/fill/mask/c__set_x