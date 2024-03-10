
# Set var
execute store result score .minx pigedit.data run data get storage bs:out raycast.targeted_block[0]
execute store result score .miny pigedit.data run data get storage bs:out raycast.targeted_block[1]
execute store result score .minz pigedit.data run data get storage bs:out raycast.targeted_block[2]
scoreboard players operation .minx pigedit.data -= @s pigedit.data.clipx
scoreboard players operation .miny pigedit.data -= @s pigedit.data.clipy
scoreboard players operation .minz pigedit.data -= @s pigedit.data.clipz

scoreboard players operation .z pigedit.data = .minz pigedit.data
scoreboard players add .z pigedit.data 1

function pigedit:macro/to_var {"from":"minx","to":"minx"}
function pigedit:macro/to_var {"from":"miny","to":"miny"}
function pigedit:macro/to_var {"from":"minz","to":"minz"}
function pigedit:macro/to_var {"from":"z","to":"z"}
data modify storage pigedit:data data.var.uuid0 set from entity @s UUID[0]
data modify storage pigedit:data data.var.uuid1 set from entity @s UUID[1]
data modify storage pigedit:data data.var.uuid2 set from entity @s UUID[2]
data modify storage pigedit:data data.var.uuid3 set from entity @s UUID[3]


# Macro
function pigedit:cmd/paste/macro with storage pigedit:data data.var

