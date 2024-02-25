kill @e[tag=bob]
function pigedit:global/selection/get_size
function pigedit:global/selection/get_min

scoreboard players operation .max pigedit.data = .dx pigedit.data
scoreboard players operation .max pigedit.data *= .dy pigedit.data
scoreboard players set .i pigedit.data 0
data modify storage pigedit:data data.var.name set value ""
function _pig:toto/loop
scoreboard players operation .minx pigedit.data *= #2 pigedit.data
scoreboard players operation .minx pigedit.data += .dx pigedit.data
execute store result storage pigedit:data data.var.minx float 0.5 run scoreboard players get .minx pigedit.data
function pigedit:debug/var {var:minx}
function pigedit:debug/storage {data:var.minx}
scoreboard players operation .dx pigedit.data *= #40 pigedit.data


function pigedit:macro/to_var {from:dx,to:dx}
function pigedit:macro/to_var {from:miny,to:miny}
function pigedit:macro/to_var {from:minz,to:minz}

function pigedit:debug/storage {data:var.minx}
function pigedit:debug/storage {data:var.miny}
function pigedit:debug/storage {data:var.minz}
function pigedit:debug/storage {data:var.dx}
function pigedit:debug/storage {data:var.name}
function _pig:toto/macro_summon with storage pigedit:data data.var

