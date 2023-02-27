
# as-at: player

kill @e[type=item,nbt={Item:{tag:{pigedit:{item_wand_2:1b}}}}]
tag @s add pigedit.wand.player
give @s player_head{pigedit:{item_wand_2:1b},display:{Name:'{"text":"Selector 2","italic": false,"color": "dark_aqua"}'},SkullOwner:{Id:[I;987401944,1270366593,-1744143053,-1161197011],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjBiYTQxMmFhNzZhOGUxMTlhZTNlY2EwNzE0MjhmM2Q5ZTIwNDJiNDk1MmJkODMzNThkNjI5NmU4MTJiZTgifX19"}]}}}
tag @s remove pigedit.wand.player
function pigedit:global/selection/view