

# First Tellraw
tellraw @s {"text":"┌─── Current Masks","color":"gold"}

# Middle
scoreboard players set .i pigedit.data 0
data modify storage pigedit:data data.var.i set value 0
execute if score .mask_number pigedit.data matches 1.. run function pigedit:cmd/mask/view/loop

# Last Tellraw
tellraw @s {"text":"└───","color":"gold"}


