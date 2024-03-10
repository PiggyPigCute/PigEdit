
# Set var
execute store result score .r pigedit.data run data get storage pigedit:data data.var.r
execute store result score .dy pigedit.data run data get storage pigedit:data data.var.h
execute store result score .x0 pigedit.data run data get storage bs:out raycast.targeted_block[0]
execute store result score .miny pigedit.data run data get storage bs:out raycast.targeted_block[1]
execute store result score .z0 pigedit.data run data get storage bs:out raycast.targeted_block[2]
scoreboard players set .ez pigedit.data 0
execute if score .mask_number pigedit.data matches 0 unless data storage pigedit:data data.var.pattern run function pigedit:cmd/cyl/start_ez

# Bresenham Algo
scoreboard players set .x pigedit.data 0
scoreboard players operation .y pigedit.data = .r pigedit.data
scoreboard players operation .m pigedit.data = .r pigedit.data
scoreboard players operation .m pigedit.data *= #-4 pigedit.data
scoreboard players add .m pigedit.data 5
function pigedit:cmd/cyl/loop