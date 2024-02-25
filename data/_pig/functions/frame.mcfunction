
scoreboard players operation .i pigedit.data = .selection_frame pigedit.data
execute if score .i pigedit.data matches 0 run function pigedit:global/selection/frame/turn/on
execute if score .i pigedit.data matches 1 run function pigedit:global/selection/frame/turn/off
