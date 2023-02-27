
scoreboard players remove count pigedit.data 1


execute if score count pigedit.data matches 0 align xyz positioned ~.5 ~ ~.5 run function pigedit:cmd/up/tp

execute if score count pigedit.data matches 1.. positioned ~ ~1 ~ run function pigedit:cmd/up/move
