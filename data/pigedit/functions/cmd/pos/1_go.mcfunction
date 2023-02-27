
# as: player


summon marker ~ ~ ~ {Tags:["pigedit.pos.go"]}
execute store result entity @e[type=marker,tag=pigedit.pos.go,limit=1] Pos[0] double 1 run scoreboard players get @s pigedit.data.pos1x
execute store result entity @e[type=marker,tag=pigedit.pos.go,limit=1] Pos[1] double 1 run scoreboard players get @s pigedit.data.pos1y
execute store result entity @e[type=marker,tag=pigedit.pos.go,limit=1] Pos[2] double 1 run scoreboard players get @s pigedit.data.pos1z
execute at @e[type=marker,tag=pigedit.pos.go,limit=1] positioned ~.5 ~ ~.5 run tp @s ~ ~ ~
kill @e[type=marker,tag=pigedit.pos.go,limit=1]