
function pigedit:macro/to_var {from:i,to:i}
function pigedit:cmd/pattern/lore/macro__start with storage pigedit:data data.var
function pigedit:global/block/clean_minecraft
function pigedit:cmd/pattern/lore/macro_append with storage pigedit:data data.var


# LOOP
scoreboard players add .i pigedit.data 1
execute if score .i pigedit.data < .max pigedit.data run function pigedit:cmd/pattern/lore/loop