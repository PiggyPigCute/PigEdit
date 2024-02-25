
# Placings
execute if score .ez pigedit.data matches 1 run function pigedit:cmd/cyl/place_ez
execute if score .ez pigedit.data matches 0 run function pigedit:cmd/cyl/place_hard/


# Bresenham Algo
scoreboard players remove .y pigedit.data 1
scoreboard players operation .z pigedit.data = .y pigedit.data
scoreboard players operation .z pigedit.data *= #8 pigedit.data
scoreboard players operation .m pigedit.data -= .z pigedit.data
