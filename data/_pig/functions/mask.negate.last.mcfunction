
# Set var
scoreboard players operation .i pigedit.data = .mask_number pigedit.data
scoreboard players remove .i pigedit.data 1
execute store result storage pigedit:data data.var.i int 1 run scoreboard players get .i pigedit.data

# Macro
function pigedit:cmd/mask/negate/macro with storage pigedit:data data.var
