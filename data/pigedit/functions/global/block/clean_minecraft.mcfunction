data modify storage pigedit:data data.var.name set value ""
data modify storage pigedit:data data.var.name set string storage pigedit:data data.var.block 0 10
execute store result score .ok pigedit.data run data modify storage pigedit:data data.var.name set value "minecraft:"
execute if score .ok pigedit.data matches 0 run data modify storage pigedit:data data.var.block set string storage pigedit:data data.var.block 10