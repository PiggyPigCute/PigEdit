

scoreboard players operation px pigedit.data = dx pigedit.data
function pigedit:cmd/fill/set_x

execute if block ~ ~-1 ~ barrier run setblock ~ ~-1 ~ air
kill @e[type=marker,tag=pigedit.fill.start,limit=1]