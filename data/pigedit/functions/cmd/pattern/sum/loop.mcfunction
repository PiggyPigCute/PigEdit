

function pigedit:macro/to_var {from:i,to:i}
function pigedit:cmd/pattern/macro_get_ith with storage pigedit:data data.var

scoreboard players operation .sum pigedit.data += .get pigedit.data


# LOOP
scoreboard players add .i pigedit.data 1
execute if score .i pigedit.data < .max pigedit.data run function pigedit:cmd/pattern/sum/loop