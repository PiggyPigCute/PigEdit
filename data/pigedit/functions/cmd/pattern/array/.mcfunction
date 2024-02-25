
scoreboard players set .i pigedit.data 0
execute store result score .max pigedit.data run data get storage pigedit:data data.var.pattern
data modify storage pigedit:data data.var.array set value []

function pigedit:cmd/pattern/array/loop_i