
# as: player
# at: structure_block (pos1 + ~-1 ~ ~)


setblock ~ ~ ~ structure_block{ignoreEntities:0b,mode:"SAVE",posX:1,posY:0,posZ:0}
execute store result block ~ ~ ~ sizeX int 1 run scoreboard players get dx pigedit.data
execute store result block ~ ~ ~ sizeY int 1 run scoreboard players get dy pigedit.data
execute store result block ~ ~ ~ sizeZ int 1 run scoreboard players get dz pigedit.data


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
fill ~ ~ ~ ~ ~ ~1 air