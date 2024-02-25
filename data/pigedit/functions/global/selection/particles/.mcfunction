
execute store result storage pigedit:data data.var.x int 1 run scoreboard players get @s pigedit.data.pos1x
execute store result storage pigedit:data data.var.y int 1 run scoreboard players get @s pigedit.data.pos1y
execute store result storage pigedit:data data.var.z int 1 run scoreboard players get @s pigedit.data.pos1z
data modify storage pigedit:data data.var.name set value "dust 1 0 0 2"
function pigedit:global/selection/particles/macro.mcfunction with storage pigedit:data data.var

execute store result storage pigedit:data data.var.x int 1 run scoreboard players get @s pigedit.data.pos2x
execute store result storage pigedit:data data.var.y int 1 run scoreboard players get @s pigedit.data.pos2y
execute store result storage pigedit:data data.var.z int 1 run scoreboard players get @s pigedit.data.pos2z
data modify storage pigedit:data data.var.name set value "dust 0.157 0.451 0.725 2"
function pigedit:global/selection/particles/macro.mcfunction with storage pigedit:data data.var

