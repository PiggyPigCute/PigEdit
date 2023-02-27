
# at-at: player


#trigger
scoreboard players operation arg pigedit.data = @s pigedit.wands
scoreboard players set @s pigedit.wands 0
scoreboard players enable @s pigedit.wands


#execution
tag @s add pigedit.wand.player
give @s player_head{pigedit:{item_wand_1:1b},display:{Name:'{"text":"Selector 1","italic": false,"color": "red"}'},      SkullOwner:{Id:[I;-1071327814,915554756,-1191115545,-702931815],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvYTM5Yzg0NmY2NWQ1ZjI3MmE4MzlmZDljMmFlYjExYmRjOGUzZjgyMjlmYmUzNTgzNDg2ZTc4ZjRjMjNjOGI1YiJ9fX0="}]}}}
give @s player_head{pigedit:{item_wand_2:1b},display:{Name:'{"text":"Selector 2","italic": false,"color": "dark_aqua"}'},SkullOwner:{Id:[I;987401944,1270366593,-1744143053,-1161197011],Properties:{textures:[{Value:"eyJ0ZXh0dXJlcyI6eyJTS0lOIjp7InVybCI6Imh0dHA6Ly90ZXh0dXJlcy5taW5lY3JhZnQubmV0L3RleHR1cmUvMjBiYTQxMmFhNzZhOGUxMTlhZTNlY2EwNzE0MjhmM2Q5ZTIwNDJiNDk1MmJkODMzNThkNjI5NmU4MTJiZTgifX19"}]}}}
tag @s remove pigedit.wand.player