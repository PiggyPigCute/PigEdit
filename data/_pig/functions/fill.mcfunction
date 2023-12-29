
# as-at: player

data remove storage pigedit:data data.var
execute store result storage pigedit:data data.var.pos1x int 1 run scoreboard players get @s pigedit.data.pos1x
execute store result storage pigedit:data data.var.pos1y int 1 run scoreboard players get @s pigedit.data.pos1y
execute store result storage pigedit:data data.var.pos1z int 1 run scoreboard players get @s pigedit.data.pos1z
execute store result storage pigedit:data data.var.pos2x int 1 run scoreboard players get @s pigedit.data.pos2x
execute store result storage pigedit:data data.var.pos2y int 1 run scoreboard players get @s pigedit.data.pos2y
execute store result storage pigedit:data data.var.pos2z int 1 run scoreboard players get @s pigedit.data.pos2z

function pigedit:cmd/fill/ with storage pigedit:data data.var