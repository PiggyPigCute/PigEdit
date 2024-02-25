
execute store result score .max pigedit.data run data get storage pigedit:data data.var.pattern
scoreboard players set .sum pigedit.data 0
scoreboard players set .i pigedit.data 0

function pigedit:cmd/pattern/sum/loop