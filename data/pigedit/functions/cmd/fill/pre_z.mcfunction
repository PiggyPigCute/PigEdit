
#as: player

scoreboard players remove pz pigedit.data 1

setblock ~ ~ ~ barrel{CustomName:'{"text": "pigedit.fill.air","italic":false}'} keep

execute if score pz pigedit.data matches 0.. positioned ~ ~ ~1 run function pigedit:cmd/fill/pre_z