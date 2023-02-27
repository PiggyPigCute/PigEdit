
# as-at: player


#trigger
scoreboard players operation arg pigedit.data = @s pigedit.copy
scoreboard players set @s pigedit.copy 0
scoreboard players enable @s pigedit.copy
function pigedit:global/selection/view


#scores
function pigedit:global/selection/get_d
scoreboard players add dx pigedit.data 1
scoreboard players add dy pigedit.data 1
scoreboard players add dz pigedit.data 1
function pigedit:global/selection/get_min


#execution
summon marker ~ ~ ~ {Tags:["pigedit.copy.structure_block"]}
execute store result entity @e[type=marker,tag=pigedit.copy.structure_block,limit=1] Pos[0] double 1 run scoreboard players get minx pigedit.data
execute store result entity @e[type=marker,tag=pigedit.copy.structure_block,limit=1] Pos[1] double 1 run scoreboard players get miny pigedit.data
execute store result entity @e[type=marker,tag=pigedit.copy.structure_block,limit=1] Pos[2] double 1 run scoreboard players get minz pigedit.data
execute at @e[type=marker,tag=pigedit.copy.structure_block,limit=1] positioned ~-1 ~ ~ run function pigedit:cmd/copy/set_sb
kill @e[type=marker,tag=pigedit.copy.structure_block,limit=1]



#player
execute store result score px pigedit.data run data get entity @s Pos[0]
scoreboard players operation px pigedit.data -= minx pigedit.data
execute store result score py pigedit.data run data get entity @s Pos[1]
scoreboard players operation py pigedit.data -= miny pigedit.data
execute store result score pz pigedit.data run data get entity @s Pos[2]
scoreboard players operation pz pigedit.data -= minz pigedit.data


data modify storage pigedit:data Clipboard.use.Player set value [0,0,0]
execute store result storage pigedit:data Clipboard.use.Player[0] int 1 run scoreboard players get px pigedit.data
execute store result storage pigedit:data Clipboard.use.Player[1] int 1 run scoreboard players get py pigedit.data
execute store result storage pigedit:data Clipboard.use.Player[2] int 1 run scoreboard players get pz pigedit.data

data modify storage pigedit:data Clipboard.use.OwnerUUID set from entity @s UUID

execute if score arg pigedit.data matches 1 run data modify storage pigedit:data Clipboard.n1 set from storage pigedit:data Clipboard.use
execute if score arg pigedit.data matches 2 run data modify storage pigedit:data Clipboard.n2 set from storage pigedit:data Clipboard.use
execute if score arg pigedit.data matches 3 run data modify storage pigedit:data Clipboard.n3 set from storage pigedit:data Clipboard.use
execute if score arg pigedit.data matches 4 run data modify storage pigedit:data Clipboard.n4 set from storage pigedit:data Clipboard.use
execute if score arg pigedit.data matches 5 run data modify storage pigedit:data Clipboard.n5 set from storage pigedit:data Clipboard.use
execute if score arg pigedit.data matches 6 run data modify storage pigedit:data Clipboard.n6 set from storage pigedit:data Clipboard.use
execute if score arg pigedit.data matches 7 run data modify storage pigedit:data Clipboard.n7 set from storage pigedit:data Clipboard.use
execute if score arg pigedit.data matches 8 run data modify storage pigedit:data Clipboard.n8 set from storage pigedit:data Clipboard.use
execute if score arg pigedit.data matches 9 run data modify storage pigedit:data Clipboard.n9 set from storage pigedit:data Clipboard.use

data remove storage pigedit:data Clipboard.use


#display
execute if score arg pigedit.data matches 1 run tellraw @s ["",{"text":"[PigEdit Clipboard] ","color":"gold"},{"selector":"@a[tag=pigedit.clipboard.owner,limit=1]","italic":true,"color":"gray"},{"text":" used the ","italic":true,"color":"gray"},{"text":"[Clipboard 1]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger pigedit.clipboard set 1"}}]
execute if score arg pigedit.data matches 2 run tellraw @s ["",{"text":"[PigEdit Clipboard] ","color":"gold"},{"selector":"@a[tag=pigedit.clipboard.owner,limit=1]","italic":true,"color":"gray"},{"text":" used the ","italic":true,"color":"gray"},{"text":"[Clipboard 2]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger pigedit.clipboard set 2"}}]
execute if score arg pigedit.data matches 3 run tellraw @s ["",{"text":"[PigEdit Clipboard] ","color":"gold"},{"selector":"@a[tag=pigedit.clipboard.owner,limit=1]","italic":true,"color":"gray"},{"text":" used the ","italic":true,"color":"gray"},{"text":"[Clipboard 3]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger pigedit.clipboard set 3"}}]
execute if score arg pigedit.data matches 4 run tellraw @s ["",{"text":"[PigEdit Clipboard] ","color":"gold"},{"selector":"@a[tag=pigedit.clipboard.owner,limit=1]","italic":true,"color":"gray"},{"text":" used the ","italic":true,"color":"gray"},{"text":"[Clipboard 4]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger pigedit.clipboard set 4"}}]
execute if score arg pigedit.data matches 5 run tellraw @s ["",{"text":"[PigEdit Clipboard] ","color":"gold"},{"selector":"@a[tag=pigedit.clipboard.owner,limit=1]","italic":true,"color":"gray"},{"text":" used the ","italic":true,"color":"gray"},{"text":"[Clipboard 5]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger pigedit.clipboard set 5"}}]
execute if score arg pigedit.data matches 6 run tellraw @s ["",{"text":"[PigEdit Clipboard] ","color":"gold"},{"selector":"@a[tag=pigedit.clipboard.owner,limit=1]","italic":true,"color":"gray"},{"text":" used the ","italic":true,"color":"gray"},{"text":"[Clipboard 6]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger pigedit.clipboard set 6"}}]
execute if score arg pigedit.data matches 7 run tellraw @s ["",{"text":"[PigEdit Clipboard] ","color":"gold"},{"selector":"@a[tag=pigedit.clipboard.owner,limit=1]","italic":true,"color":"gray"},{"text":" used the ","italic":true,"color":"gray"},{"text":"[Clipboard 7]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger pigedit.clipboard set 7"}}]
execute if score arg pigedit.data matches 8 run tellraw @s ["",{"text":"[PigEdit Clipboard] ","color":"gold"},{"selector":"@a[tag=pigedit.clipboard.owner,limit=1]","italic":true,"color":"gray"},{"text":" used the ","italic":true,"color":"gray"},{"text":"[Clipboard 8]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger pigedit.clipboard set 8"}}]
execute if score arg pigedit.data matches 9 run tellraw @s ["",{"text":"[PigEdit Clipboard] ","color":"gold"},{"selector":"@a[tag=pigedit.clipboard.owner,limit=1]","italic":true,"color":"gray"},{"text":" used the ","italic":true,"color":"gray"},{"text":"[Clipboard 9]","color":"green","clickEvent":{"action":"suggest_command","value":"/trigger pigedit.clipboard set 9"}}]


