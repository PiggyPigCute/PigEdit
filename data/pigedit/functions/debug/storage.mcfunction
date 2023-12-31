$execute store result score .debug pigedit.data run data get storage pigedit:data data.$(data)
function pigedit:debug/var {var:debug}
data remove storage pigedit:data data.var.debug
scoreboard players reset .debug pigedit.data