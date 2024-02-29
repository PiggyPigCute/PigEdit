
kill @e[tag=pigedit.selection_frame.text_display]
function pigedit:global/selection/get_size

execute if score .size pigedit.data < .max_frame_size pigedit.settings run function pigedit:global/selection/frame/go
