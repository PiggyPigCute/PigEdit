
# Get mask
execute store result storage pigedit:data data.var.i int 1 run scoreboard players get .i pigedit.data
function pigedit:cmd/mask/get/macro_get_mask with storage pigedit:data data.var

# Concatenate
function pigedit:cmd/mask/get/macro_concatenate with storage pigedit:data data.var
data modify storage pigedit:data data.var.mask set from storage pigedit:data data.temp

# LOOP
scoreboard players add .i pigedit.data 1
execute if score .i pigedit.data < .mask_number pigedit.data run function pigedit:cmd/mask/get/loop

