
# as-at @a


# markers
scoreboard players enable @s pigedit.


# functions
execute if score @s pigedit.circle matches 1.. run function pigedit:cmd/circle/
execute if score @s pigedit.circle.clear matches 1.. run function pigedit:cmd/circle.clear/
execute if score @s pigedit.clear matches 1.. run function pigedit:cmd/clear/
execute if score @s pigedit.copy matches 1.. run function pigedit:cmd/copy/
execute if score @s pigedit.fill matches 1.. run function pigedit:cmd/fill/
execute if score @s pigedit.paste matches 1.. run function pigedit:cmd/paste/
execute if score @s pigedit.pos1 matches 1.. run function pigedit:cmd/pos/1_set
execute if score @s pigedit.pos1.get matches 1.. run function pigedit:cmd/pos/1_get
execute if score @s pigedit.pos2 matches 1.. run function pigedit:cmd/pos/2_set
execute if score @s pigedit.pos2.get matches 1.. run function pigedit:cmd/pos/2_get
execute if score @s pigedit.selection matches 1.. run function pigedit:cmd/selection/
execute if score @s pigedit.up matches 1.. run function pigedit:cmd/up/
execute if score @s pigedit.wands matches 1.. run function pigedit:cmd/wands/
