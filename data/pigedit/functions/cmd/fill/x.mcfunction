
#as: player

scoreboard players remove px pigedit.data 1

scoreboard players operation py pigedit.data = dy pigedit.data
function pigedit:cmd/fill/y

execute if score px pigedit.data matches 0.. positioned ~1 ~ ~ run function pigedit:cmd/fill/x