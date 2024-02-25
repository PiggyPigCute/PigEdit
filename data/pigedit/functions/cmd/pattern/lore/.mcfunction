
scoreboard players set .i pigedit.data 0
execute store result score .max pigedit.data run data get storage pigedit:data data.var.pattern
data modify storage pigedit:data data.var.lore set value []

function pigedit:cmd/pattern/lore/loop