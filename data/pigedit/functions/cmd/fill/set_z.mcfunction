
#as: player

scoreboard players remove pz pigedit.data 1

setblock ~ ~ ~ air
function pigedit:global/place_block/place


execute if score pz pigedit.data matches 0.. positioned ~ ~ ~1 run function pigedit:cmd/fill/set_z