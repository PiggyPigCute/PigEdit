$clone ~ ~ ~ ~$(dx) ~$(dy) ~$(dz) $(offset) masked force

# LOOP
scoreboard players add .i pigedit.data 1
$execute if score .i pigedit.data < .max pigedit.data positioned $(offset) run function pigedit:cmd/stack/macro_loop with storage pigedit:data data.var