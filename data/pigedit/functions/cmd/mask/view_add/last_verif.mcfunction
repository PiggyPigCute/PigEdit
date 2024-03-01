
data modify storage pigedit:data data.var.name set from storage pigedit:data data.var.block
execute store success score .ok pigedit.data run data modify storage pigedit:data data.var.name set from storage pigedit:data data.var.last
execute if score .ok pigedit.data matches 0 run function pigedit:cmd/mask/view_add/macro_tellraw_ez with storage pigedit:data data.var
execute if score .ok pigedit.data matches 1 run function pigedit:cmd/mask/view_add/macro_tellraw_last with storage pigedit:data data.var