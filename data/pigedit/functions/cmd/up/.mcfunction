
# at-at: player


#trigger
scoreboard players operation arg pigedit.data = @s pigedit.up
scoreboard players set @s pigedit.up 0
scoreboard players enable @s pigedit.up


#scores
scoreboard players operation count pigedit.data = arg pigedit.data


#execution
function pigedit:cmd/up/move
