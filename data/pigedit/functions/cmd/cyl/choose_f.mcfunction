
# Placings
execute if score .mask_number pigedit.data matches 1.. run function pigedit:cmd/cyl/place_hard/
execute if score .mask_number pigedit.data matches 0 run function pigedit:cmd/cyl/place_ez


# Bresenham Algo
scoreboard players remove .y pigedit.data 1
scoreboard players operation .z pigedit.data = .y pigedit.data
scoreboard players operation .z pigedit.data *= .8 pigedit.const
scoreboard players operation .m pigedit.data -= .z pigedit.data
