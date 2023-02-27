
setblock ~ ~ ~ structure_block{mode:"LOAD"}

execute if score arg pigedit.data matches 1 run data modify block ~ ~ ~ name set value "minecraft:pigedit.clipboard.1"
execute if score arg pigedit.data matches 2 run data modify block ~ ~ ~ name set value "minecraft:pigedit.clipboard.2"
execute if score arg pigedit.data matches 3 run data modify block ~ ~ ~ name set value "minecraft:pigedit.clipboard.3"
execute if score arg pigedit.data matches 4 run data modify block ~ ~ ~ name set value "minecraft:pigedit.clipboard.4"
execute if score arg pigedit.data matches 5 run data modify block ~ ~ ~ name set value "minecraft:pigedit.clipboard.5"
execute if score arg pigedit.data matches 6 run data modify block ~ ~ ~ name set value "minecraft:pigedit.clipboard.6"
execute if score arg pigedit.data matches 7 run data modify block ~ ~ ~ name set value "minecraft:pigedit.clipboard.7"
execute if score arg pigedit.data matches 8 run data modify block ~ ~ ~ name set value "minecraft:pigedit.clipboard.8"
execute if score arg pigedit.data matches 9 run data modify block ~ ~ ~ name set value "minecraft:pigedit.clipboard.9"

setblock ~ ~ ~1 redstone_block