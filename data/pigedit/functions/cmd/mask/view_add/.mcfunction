
function pigedit:global/block/clean_minecraft
execute store success score .ez pigedit.data unless data storage pigedit:data data.var.block
execute if score .ez pigedit.data matches 0 run data modify storage pigedit:data data.var.last set from storage pigedit:data data.var.block
function pigedit:global/block/get_select
function pigedit:global/block/clean_minecraft

data modify storage pigedit:data data.var.x set value "true"
data modify storage pigedit:data data.var.y set value "false"
data modify storage pigedit:data data.var.z set value "false"
data modify storage pigedit:data data.var.type set value "block"
execute if score .ez pigedit.data matches 1 run function pigedit:cmd/mask/view_add/macro_tellraw_ez with storage pigedit:data data.var
execute if score .ez pigedit.data matches 0 run function pigedit:cmd/mask/view_add/last_verif