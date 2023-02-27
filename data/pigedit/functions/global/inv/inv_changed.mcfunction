
# as-at: player


advancement revoke @s only pigedit:inv_changed

execute if entity @s[tag=!pigedit.wand.player] if entity @e[type=item,nbt={Item:{tag:{pigedit:{item_wand_1:1b}}}}] run function pigedit:global/inv/wand_1_dropped
execute if entity @s[tag=!pigedit.wand.player] if entity @e[type=item,nbt={Item:{tag:{pigedit:{item_wand_2:1b}}}}] run function pigedit:global/inv/wand_2_dropped