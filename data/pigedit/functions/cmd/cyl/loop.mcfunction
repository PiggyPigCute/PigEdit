
# Bresenham Algo
execute if score .m pigedit.data matches 1.. run function pigedit:cmd/cyl/choose_f
scoreboard players add .x pigedit.data 1
scoreboard players operation .z pigedit.data = .x pigedit.data
scoreboard players operation .z pigedit.data *= #8 pigedit.data
scoreboard players operation .m pigedit.data += .z pigedit.data
scoreboard players add .m pigedit.data 4


# LOOP
execute if score .x pigedit.data <= .y pigedit.data run function pigedit:cmd/cyl/loop
