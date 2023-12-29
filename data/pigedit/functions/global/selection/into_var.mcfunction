
# Put pos1x, pos1y, pos1z, pos2x, pos2y, pos2z from scores to storage (path: data.var)
# Usefull to use macros

# as: player !!!!

execute store result storage pigedit:data data.var.pos1x int 1 run scoreboard players get @s pigedit.data.pos1x
execute store result storage pigedit:data data.var.pos1y int 1 run scoreboard players get @s pigedit.data.pos1y
execute store result storage pigedit:data data.var.pos1z int 1 run scoreboard players get @s pigedit.data.pos1z
execute store result storage pigedit:data data.var.pos2x int 1 run scoreboard players get @s pigedit.data.pos2x
execute store result storage pigedit:data data.var.pos2y int 1 run scoreboard players get @s pigedit.data.pos2y
execute store result storage pigedit:data data.var.pos2z int 1 run scoreboard players get @s pigedit.data.pos2z

