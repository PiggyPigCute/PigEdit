
# as-at marker


scoreboard players remove rotation pigedit.data 1
execute store result entity @s Rotation[0] float 1 run scoreboard players get rotation pigedit.data

scoreboard players operation count pigedit.data = radius pigedit.data
function pigedit:cmd/circle.clear/c_raycast

execute if score rotation pigedit.data matches -180.. run schedule function pigedit:cmd/circle.clear/b_sched_rot 1t replace

execute if score rotation pigedit.data matches ..-181 run function pigedit:cmd/circle.clear/d_end
