# wall group
data modify storage bs:out hitbox set value []
execute if block ~ ~ ~ #minecraft:walls[up=true] run data modify storage bs:out hitbox append value [4, 0, 4, 12, 16, 12]
execute if block ~ ~ ~ #minecraft:walls[west=low] run data modify storage bs:out hitbox append value [0, 0, 5, 8, 14, 11]
execute if block ~ ~ ~ #minecraft:walls[east=low] run data modify storage bs:out hitbox append value [8, 0, 5, 16, 14, 11]
execute if block ~ ~ ~ #minecraft:walls[north=low] run data modify storage bs:out hitbox append value [5, 0, 0, 11, 14, 8]
execute if block ~ ~ ~ #minecraft:walls[south=low] run data modify storage bs:out hitbox append value [5, 0, 8, 11, 14, 16]
execute if block ~ ~ ~ #minecraft:walls[west=tall] run data modify storage bs:out hitbox append value [0, 0, 5, 8, 16, 11]
execute if block ~ ~ ~ #minecraft:walls[east=tall] run data modify storage bs:out hitbox append value [8, 0, 5, 16, 16, 11]
execute if block ~ ~ ~ #minecraft:walls[north=tall] run data modify storage bs:out hitbox append value [5, 0, 0, 11, 16, 8]
execute if block ~ ~ ~ #minecraft:walls[south=tall] run data modify storage bs:out hitbox append value [5, 0, 8, 11, 16, 16]
