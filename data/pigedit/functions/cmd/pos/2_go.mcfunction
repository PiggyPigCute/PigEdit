
# as: player


summon marker ~ ~ ~ {Tags:["pigedit.pos.go"]}
execute store result entity @e[type=marker,tag=pigedit.pos.go,limit=1] Pos[0] double 1 run scoreboard players get @s pigedit.data.posx
execute store result entity @e[type=marker,tag=pigedit.pos.go,limit=1] Pos[1] double 1 run scoreboard players get @s pigedit.data.posy
execute store result entity @e[type=marker,tag=pigedit.pos.go,limit=1] Pos[2] double 1 run scoreboard players get @s pigedit.data.posz
tp @s @e[type=marker,tag=pigedit.pos.go,limit=1]
kill @e[type=marker,tag=pigedit.pos.go,limit=1]