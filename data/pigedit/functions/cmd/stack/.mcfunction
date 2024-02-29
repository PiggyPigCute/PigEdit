
function pigedit:global/selection/get_size
function pigedit:global/selection/get_min

function pigedit:macro/to_var {from:dx,to:dx}
function pigedit:macro/to_var {from:dy,to:dy}
function pigedit:macro/to_var {from:dz,to:dz}
execute store result score .x pigedit.data run data get entity @s Rotation[0]
execute store result score .y pigedit.data run data get entity @s Rotation[1]
function pigedit:cmd/stack/macro_get_rot with storage pigedit:data data.var

function pigedit:macro/to_var {from:minx,to:minx}
function pigedit:macro/to_var {from:miny,to:miny}
function pigedit:macro/to_var {from:minz,to:minz}
scoreboard players set .i pigedit.data 0
function pigedit:cmd/stack/macro_loop_start with storage pigedit:data data.var
