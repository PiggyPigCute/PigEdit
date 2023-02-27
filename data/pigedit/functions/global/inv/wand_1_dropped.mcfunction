
# as-at: player

kill @e[type=item,nbt={Item:{tag:{pigedit:{item_wand_1:1b}}}}]
tag @s add pigedit.wand.player
give @s player_head{pigedit:{item_wand_1:1b},display:{Name:'{"text":"Selector 1","italic": false,"color": "red"}'},      SkullOwner:{Id:[I;-1071327814,915554756,-1191115545,-702931815],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTM5Yzg0NmY2NWQ1ZjI3MmE4MzlmZDljMmFlYjExYmRjOGUzZjgyMjlmYmUzNTgzNDg2ZTc4ZjRjMjNjOGI1YiJ9fX0="}]}}}
tag @s remove pigedit.wand.player
function pigedit:global/selection/view