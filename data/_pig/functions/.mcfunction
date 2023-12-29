# as-at player



#trigger
scoreboard players operation arg pigedit.data = @s pigedit.fill
scoreboard players set @s pigedit.fill 0
scoreboard players enable @s pigedit.fill
function pigedit:global/selection/view

data modify storage pigedit:data PlaceBlock.id set from entity @s SelectedItem.id


#scores
function pigedit:global/selection/get_d
function pigedit:global/selection/get_min



#execution
summon marker ~ ~ ~ {Tags:["pigedit.fill.start"]}
execute store result entity @e[type=marker,tag=pigedit.fill.start,limit=1] Pos[0] double 1 run scoreboard players get minx pigedit.data
execute store result entity @e[type=marker,tag=pigedit.fill.start,limit=1] Pos[1] double 1 run scoreboard players get miny pigedit.data
execute store result entity @e[type=marker,tag=pigedit.fill.start,limit=1] Pos[2] double 1 run scoreboard players get minz pigedit.data
execute at @e[type=marker,tag=pigedit.fill.start,limit=1] run setblock ~ ~-1 ~ barrier keep
schedule function pigedit:cmd/fill/a_sched 1t

