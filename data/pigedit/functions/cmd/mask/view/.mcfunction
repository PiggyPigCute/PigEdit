

# First Tellraw
tellraw @s ["",{"text":"┌─── Current Masks ","color":"gold"},{"text":"➕","color":"green","bold":true,"clickEvent":{"action":"run_command","value":"/function pigedit:cmd/mask/view_add/"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to add a new mask","color":"green"}}},"",{"text":"🗑","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function pigedit:cmd/mask/view/click/remove_all"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to remove all the masks","color":"red"}}}]

# Middle
scoreboard players set .i pigedit.data 0
data modify storage pigedit:data data.var.i set value 0
execute if score .mask_number pigedit.data matches 1.. run function pigedit:cmd/mask/view/loop

# Last Tellraw
tellraw @s {"text":"└───","color":"gold"}


