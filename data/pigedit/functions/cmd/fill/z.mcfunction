
#as: player

scoreboard players remove pz pigedit.data 1

setblock ~ ~ ~ red_wool

execute if score pz pigedit.data matches 0.. positioned ~ ~ ~1 run function pigedit:cmd/fill/z