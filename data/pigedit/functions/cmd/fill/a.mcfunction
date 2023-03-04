
# as: player
# at: start



setblock ~ ~ ~ minecraft:air
function pigedit:global/place_block/place
schedule function pigedit:cmd/fill/b_sched 1t

