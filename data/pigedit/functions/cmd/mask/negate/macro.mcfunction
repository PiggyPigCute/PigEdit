
# Get the neg state of the mask
scoreboard players set .x pigedit.data 0
$execute store result score .x pigedit.data if data storage pigedit:data data.mask[$(i)].neg_bool


# IF to UNLESS
execute if score .x pigedit.data matches 0 run function pigedit:cmd/mask/negate/submacro_unless with storage pigedit:data data.var

# UNLESS to IF
execute if score .x pigedit.data matches 1 run function pigedit:cmd/mask/negate/submacro_if with storage pigedit:data data.var
