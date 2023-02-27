
# as: player !!!


summon marker ~ ~ ~ {Tags:["pigedit.global.selection.view"]}
execute store result entity @e[type=marker,tag=pigedit.global.selection.view,limit=1] Pos[0] double 1 run scoreboard players get @s pigedit.data.pos1x
execute store result entity @e[type=marker,tag=pigedit.global.selection.view,limit=1] Pos[1] double 1 run scoreboard players get @s pigedit.data.pos1y
execute store result entity @e[type=marker,tag=pigedit.global.selection.view,limit=1] Pos[2] double 1 run scoreboard players get @s pigedit.data.pos1z
execute at @e[type=marker,tag=pigedit.global.selection.view,limit=1] run particle dust 1 0 0 2 ~.5 ~.5 ~.5 .4 .4 .4 0 100
execute store result entity @e[type=marker,tag=pigedit.global.selection.view,limit=1] Pos[0] double 1 run scoreboard players get @s pigedit.data.pos2x
execute store result entity @e[type=marker,tag=pigedit.global.selection.view,limit=1] Pos[1] double 1 run scoreboard players get @s pigedit.data.pos2y
execute store result entity @e[type=marker,tag=pigedit.global.selection.view,limit=1] Pos[2] double 1 run scoreboard players get @s pigedit.data.pos2z
execute at @e[type=marker,tag=pigedit.global.selection.view,limit=1] run particle dust 0.157 0.451 0.725 2 ~.5 ~.5 ~.5 .4 .4 .4 0 100
kill @e[type=marker,tag=pigedit.global.selection.view,limit=1]