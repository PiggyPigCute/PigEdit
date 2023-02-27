
# as-at: player


#trigger
scoreboard players operation arg pigedit.data = @s pigedit.paste
scoreboard players set @s pigedit.paste 0
scoreboard players enable @s pigedit.paste


#scores
execute if score arg pigedit.data matches 1 run data modify storage pigedit:data Clipboard.use.Player set from storage pigedit:data Clipboard.n1.Player
execute if score arg pigedit.data matches 2 run data modify storage pigedit:data Clipboard.use.Player set from storage pigedit:data Clipboard.n2.Player
execute if score arg pigedit.data matches 3 run data modify storage pigedit:data Clipboard.use.Player set from storage pigedit:data Clipboard.n3.Player
execute if score arg pigedit.data matches 4 run data modify storage pigedit:data Clipboard.use.Player set from storage pigedit:data Clipboard.n4.Player
execute if score arg pigedit.data matches 5 run data modify storage pigedit:data Clipboard.use.Player set from storage pigedit:data Clipboard.n5.Player
execute if score arg pigedit.data matches 6 run data modify storage pigedit:data Clipboard.use.Player set from storage pigedit:data Clipboard.n6.Player
execute if score arg pigedit.data matches 7 run data modify storage pigedit:data Clipboard.use.Player set from storage pigedit:data Clipboard.n7.Player
execute if score arg pigedit.data matches 8 run data modify storage pigedit:data Clipboard.use.Player set from storage pigedit:data Clipboard.n8.Player
execute if score arg pigedit.data matches 9 run data modify storage pigedit:data Clipboard.use.Player set from storage pigedit:data Clipboard.n9.Player

execute store result score px pigedit.data run data get storage pigedit:data Clipboard.use.Player[0]
execute store result score py pigedit.data run data get storage pigedit:data Clipboard.use.Player[1]
execute store result score pz pigedit.data run data get storage pigedit:data Clipboard.use.Player[2]

data remove storage pigedit:data Clipboard.use

execute store result score minx pigedit.data run data get entity @s Pos[0]
scoreboard players operation minx pigedit.data -= px pigedit.data
execute store result score miny pigedit.data run data get entity @s Pos[1]
scoreboard players operation miny pigedit.data -= py pigedit.data
execute store result score minz pigedit.data run data get entity @s Pos[2]
scoreboard players operation minz pigedit.data -= pz pigedit.data

#execution
summon marker ~ ~ ~ {Tags:["pigedit.copy.structure_block"]}
execute store result entity @e[type=marker,tag=pigedit.copy.structure_block,limit=1] Pos[0] double 1 run scoreboard players get minx pigedit.data
execute store result entity @e[type=marker,tag=pigedit.copy.structure_block,limit=1] Pos[1] double 1 run scoreboard players get miny pigedit.data
execute store result entity @e[type=marker,tag=pigedit.copy.structure_block,limit=1] Pos[2] double 1 run scoreboard players get minz pigedit.data
execute at @e[type=marker,tag=pigedit.copy.structure_block,limit=1] positioned ~ ~ ~ run function pigedit:cmd/paste/set_sb
kill @e[type=marker,tag=pigedit.copy.structure_block,limit=1]

