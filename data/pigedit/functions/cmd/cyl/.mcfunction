
# Set var
function pigedit:global/inv/block_select
execute store result score .px pigedit.data run data get entity @s Pos[0]
execute store result score .py pigedit.data run data get entity @s Pos[1]
execute store result score .pz pigedit.data run data get entity @s Pos[2]
function pigedit:macro/to_var {from:py,to:pos1y}
scoreboard players operation .py pigedit.data += .h pigedit.data
scoreboard players remove .py pigedit.data 1
function pigedit:macro/to_var {from:py,to:pos2y}

# Bresenham Algo
scoreboard players set .x pigedit.data 0
scoreboard players operation .y pigedit.data = .r pigedit.data
scoreboard players operation .m pigedit.data = .r pigedit.data
scoreboard players operation .m pigedit.data *= .-4 pigedit.const
scoreboard players add .m pigedit.data 5
function pigedit:cmd/cyl/loop