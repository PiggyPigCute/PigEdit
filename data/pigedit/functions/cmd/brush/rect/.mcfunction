
# Set vars
execute store result score .minx pigedit.data run data get storage bs:out raycast.targeted_block[0]
execute store result score .miny pigedit.data run data get storage bs:out raycast.targeted_block[1]
execute store result score .minz pigedit.data run data get storage bs:out raycast.targeted_block[2]
execute store result score .dx pigedit.data run data get storage pigedit:data data.var.x
execute store result score .dy pigedit.data run data get storage pigedit:data data.var.y
execute store result score .dz pigedit.data run data get storage pigedit:data data.var.z
scoreboard players operation .minx pigedit.data -= .dx pigedit.data
scoreboard players operation .miny pigedit.data -= .dy pigedit.data
scoreboard players operation .minz pigedit.data -= .dz pigedit.data
scoreboard players operation .dx pigedit.data *= #2 pigedit.data
scoreboard players operation .dy pigedit.data *= #2 pigedit.data
scoreboard players operation .dz pigedit.data *= #2 pigedit.data

# ez
scoreboard players set .ez pigedit.data 0
execute if score .mask_number pigedit.data matches 0 unless data storage pigedit:data data.var.pattern run function pigedit:cmd/brush/rect/ez

# hard
execute if score .ez pigedit.data matches 0 run function pigedit:cmd/brush/rect/hard