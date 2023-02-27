# as-at player



#trigger
scoreboard players operation arg pigedit.data = @s pigedit.clear
scoreboard players set @s pigedit.clear 0
scoreboard players enable @s pigedit.clear
function pigedit:global/selection/view


#scores
function pigedit:global/selection/get_d
function pigedit:global/selection/get_min

scoreboard players operation px pigedit.data = dx pigedit.data


#execution
summon marker ~ ~ ~ {Tags:["pigedit.clear.start"]}
execute store result entity @e[type=marker,tag=pigedit.clear.start,limit=1] Pos[0] double 1 run scoreboard players get minx pigedit.data
execute store result entity @e[type=marker,tag=pigedit.clear.start,limit=1] Pos[1] double 1 run scoreboard players get miny pigedit.data
execute store result entity @e[type=marker,tag=pigedit.clear.start,limit=1] Pos[2] double 1 run scoreboard players get minz pigedit.data
execute at @e[type=marker,tag=pigedit.clear.start,limit=1] positioned ~ ~ ~ run function pigedit:cmd/clear/x
kill @e[type=marker,tag=pigedit.clear.start,limit=1]

