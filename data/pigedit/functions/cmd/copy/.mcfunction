
# as-at: player


# 48*48*48 Verification
function pigedit:global/selection/get_size
scoreboard players operation .max pigedit.data = .dx pigedit.data
scoreboard players operation .max pigedit.data > .dy pigedit.data
scoreboard players operation .max pigedit.data > .dz pigedit.data
execute if score .max pigedit.data matches 49.. run tellraw @s {"text": "Clipboard is limited to 48*48*48","color": "red"}
execute if score .max pigedit.data matches 49.. run return fail

# Set var
function pigedit:global/selection/get_min
scoreboard players operation .x pigedit.data = .minx pigedit.data
scoreboard players remove .x pigedit.data 1
scoreboard players operation .z pigedit.data = .minz pigedit.data
scoreboard players add .z pigedit.data 1
function pigedit:macro/to_var {from:dx,to:dx}
function pigedit:macro/to_var {from:dy,to:dy}
function pigedit:macro/to_var {from:dz,to:dz}
function pigedit:macro/to_var {from:miny,to:miny}
function pigedit:macro/to_var {from:minz,to:minz}
function pigedit:macro/to_var {from:x,to:x}
function pigedit:macro/to_var {from:z,to:z}
data modify storage pigedit:data data.var.uuid0 set from entity @s UUID[0]
data modify storage pigedit:data data.var.uuid1 set from entity @s UUID[1]
data modify storage pigedit:data data.var.uuid2 set from entity @s UUID[2]
data modify storage pigedit:data data.var.uuid3 set from entity @s UUID[3]
function pigedit:global/selection/into_var

# Macro
function pigedit:cmd/copy/macro with storage pigedit:data data.var

# Player Relative Position
execute store result score @s pigedit.data.clipx run data get entity @s Pos[0]
scoreboard players operation @s pigedit.data.clipx -= .minx pigedit.data
execute store result score @s pigedit.data.clipy run data get entity @s Pos[1]
scoreboard players operation @s pigedit.data.clipy -= .miny pigedit.data
execute store result score @s pigedit.data.clipz run data get entity @s Pos[2]
scoreboard players operation @s pigedit.data.clipz -= .minz pigedit.data

# Display
function pigedit:global/selection/view