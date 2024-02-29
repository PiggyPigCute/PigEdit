data modify storage bs:in raycast.max_distance set value 64.0
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run

execute unless data storage bs:out raycast.targeted_block run return fail

scoreboard players operation @s pigedit.data.pos1x = @s pigedit.data.pos2x
scoreboard players operation @s pigedit.data.pos1y = @s pigedit.data.pos2y
scoreboard players operation @s pigedit.data.pos1z = @s pigedit.data.pos2z

execute store result score @s pigedit.data.pos2x run data get storage bs:out raycast.targeted_block[0]
execute store result score @s pigedit.data.pos2y run data get storage bs:out raycast.targeted_block[1]
execute store result score @s pigedit.data.pos2z run data get storage bs:out raycast.targeted_block[2]


execute if score .selection_frame pigedit.settings matches 1 run function pigedit:global/selection/frame/
execute if score .selection_frame pigedit.settings matches 0 run function pigedit:global/selection/particles/