
# Set var
function pigedit:global/inv/block_select
execute store result score .x0 pigedit.data run data get entity @s Pos[0]
execute store result score .miny pigedit.data run data get entity @s Pos[1]
execute store result score .z0 pigedit.data run data get entity @s Pos[2]
execute if score .mask_number pigedit.data matches 0 run function pigedit:cmd/cyl/start_ez

# Bresenham Algo
scoreboard players set .x pigedit.data 0
scoreboard players operation .y pigedit.data = .r pigedit.data
scoreboard players operation .m pigedit.data = .r pigedit.data
scoreboard players operation .m pigedit.data *= .-4 pigedit.const
scoreboard players add .m pigedit.data 5
function pigedit:cmd/cyl/loop