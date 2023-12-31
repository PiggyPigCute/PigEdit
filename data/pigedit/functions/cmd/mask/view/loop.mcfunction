
# Get mask display
execute store result storage pigedit:data data.var.i int 1 run scoreboard players get .i pigedit.data
function pigedit:cmd/mask/view/macro_get_mask with storage pigedit:data data.var

# Middle Tellraw
function pigedit:cmd/mask/view/macro_tellraw with storage pigedit:data data.var

# LOOP
scoreboard players add .i pigedit.data 1
execute if score .i pigedit.data < .mask_number pigedit.data run function pigedit:cmd/mask/view/loop

