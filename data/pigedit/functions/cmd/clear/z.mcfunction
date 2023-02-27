
#as: player

scoreboard players remove pz pigedit.data 1

setblock ~ ~ ~ air

execute if score pz pigedit.data matches 0.. positioned ~ ~ ~1 run function pigedit:cmd/clear/z