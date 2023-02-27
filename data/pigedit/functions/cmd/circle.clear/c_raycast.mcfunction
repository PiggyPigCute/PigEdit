
# raycast
#  as marker
#  from marker
#  to circle border


scoreboard players remove count pigedit.data 1

setblock ~ ~ ~ air

execute if score count pigedit.data matches 1.. positioned ^ ^ ^0.5 run function pigedit:cmd/circle.clear/c_raycast
