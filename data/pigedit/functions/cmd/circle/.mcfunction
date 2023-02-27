
# as-at player


#trigger
scoreboard players operation arg pigedit.data = @s pigedit.circle
scoreboard players set @s pigedit.circle 0

#player operations
tag @s add pigedit.player
data modify storage pigedit:data PlaceBlock.id set from entity @s SelectedItem.id

#scores sets
scoreboard players operation radius pigedit.data = arg pigedit.data
scoreboard players operation radius pigedit.data *= 2 pigedit.const
scoreboard players remove radius pigedit.data 1
scoreboard players set rotation pigedit.data 180

#execution
execute align xyz positioned ~.5 ~.5 ~.5 run summon marker ~ ~ ~ {Tags:["pigedit.circle.center"],Rotation:[180.0f,0.0f]}
execute as @e[type=marker,tag=pigedit.circle.center,limit=1] at @s run function pigedit:cmd/circle/a_rotation





