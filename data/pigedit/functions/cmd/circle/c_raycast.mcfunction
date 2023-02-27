
# raycast
#  as marker
#  from marker
#  to circle border


scoreboard players remove count pigedit.data 1

setblock ~ ~ ~ andesite

execute if score count pigedit.data matches 1.. positioned ^ ^ ^0.5 run function pigedit:cmd/circle/c_raycast
