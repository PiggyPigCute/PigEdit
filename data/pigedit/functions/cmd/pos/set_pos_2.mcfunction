
# as-at: player

execute store result score @s pigedit.data.pos2x run data get entity @s Pos[0]
execute store result score @s pigedit.data.pos2y run data get entity @s Pos[1]
execute store result score @s pigedit.data.pos2z run data get entity @s Pos[2]

execute if score .selection_frame pigedit.data matches 1 run function pigedit:global/selection/frame/
execute if score .selection_frame pigedit.data matches 0 run function pigedit:global/selection/particles/

function pigedit:global/selection/into_var
function pigedit:macro/tellraw/set_pos_2