
scoreboard players operation .dz pigedit.data = .x pigedit.data
scoreboard players operation .dz pigedit.data *= #2 pigedit.data
scoreboard players add .dz pigedit.data 1
scoreboard players operation .minx pigedit.data = .x0 pigedit.data
scoreboard players operation .minx pigedit.data -= .y pigedit.data
scoreboard players operation .minz pigedit.data = .z0 pigedit.data
scoreboard players operation .minz pigedit.data -= .x pigedit.data
function pigedit:cmd/fill/hard/