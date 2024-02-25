
scoreboard players set .j pigedit.data 0
function pigedit:macro/to_var {from:i,to:i}
function pigedit:cmd/pattern/macro_get_ith with storage pigedit:data data.var
function pigedit:cmd/pattern/array/loop_j


# LOOP
scoreboard players add .i pigedit.data 1
execute if score .i pigedit.data < .max pigedit.data run function pigedit:cmd/pattern/array/loop_i