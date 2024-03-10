
# Set vars
execute store result score .minx pigedit.data run data get storage bs:out raycast.targeted_block[0]
execute store result score .miny pigedit.data run data get storage bs:out raycast.targeted_block[1]
execute store result score .minz pigedit.data run data get storage bs:out raycast.targeted_block[2]
execute store result score .r pigedit.data run data get storage pigedit:data data.var.r
scoreboard players operation .minx pigedit.data -= .r pigedit.data
scoreboard players operation .miny pigedit.data -= .r pigedit.data
scoreboard players operation .minz pigedit.data -= .r pigedit.data
scoreboard players operation .r pigedit.data *= #2 pigedit.data

# ez
scoreboard players set .ez pigedit.data 0
execute if score .mask_number pigedit.data matches 0 unless data storage pigedit:data data.var.pattern run function pigedit:cmd/brush/cube/ez

# hard
execute if score .ez pigedit.data matches 0 run function pigedit:cmd/brush/cube/hard