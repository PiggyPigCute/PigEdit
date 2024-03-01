
function pigedit:global/block/get_select
function pigedit:global/block/clean_minecraft
data modify storage pigedit:data data.var.x set value "true"
data modify storage pigedit:data data.var.y set value "false"
data modify storage pigedit:data data.var.z set value "false"
data modify storage pigedit:data data.var.name set value "block"
function pigedit:cmd/mask/view_add/macro_tellraw with storage pigedit:data data.var