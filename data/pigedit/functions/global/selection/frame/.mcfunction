
kill @e[tag=pigedit.selection_frame.text_display]
function pigedit:global/selection/get_size
function pigedit:global/selection/get_min
function pigedit:macro/to_var {from:minx,to:minx}
function pigedit:macro/to_var {from:miny,to:miny}
function pigedit:macro/to_var {from:minz,to:minz}

scoreboard players operation .max pigedit.data = .dy pigedit.data
scoreboard players operation .max pigedit.data *= .dz pigedit.data
function pigedit:global/selection/frame/spaces/
scoreboard players operation .mid pigedit.data = .minz pigedit.data
scoreboard players operation .mid pigedit.data *= #2 pigedit.data
scoreboard players operation .mid pigedit.data += .dz pigedit.data
execute store result storage pigedit:data data.var.mid float 0.5 run scoreboard players get .mid pigedit.data
scoreboard players operation .i pigedit.data = .dz pigedit.data
scoreboard players operation .i pigedit.data *= #40 pigedit.data
function pigedit:macro/to_var {from:i,to:i}
function pigedit:global/selection/frame/macro_summon_x1 with storage pigedit:data data.var
data modify storage pigedit:data data.var.rot set value 0
scoreboard players operation .max pigedit.data = .minx pigedit.data
scoreboard players operation .max pigedit.data += .dx pigedit.data
function pigedit:macro/to_var {from:max,to:max}
function pigedit:global/selection/frame/macro_summon_x2 with storage pigedit:data data.var

scoreboard players operation .max pigedit.data = .dx pigedit.data
scoreboard players operation .max pigedit.data *= .dz pigedit.data
function pigedit:global/selection/frame/spaces/
scoreboard players operation .mid pigedit.data = .minz pigedit.data
scoreboard players operation .mid pigedit.data *= #2 pigedit.data
scoreboard players operation .mid pigedit.data += .dz pigedit.data
execute store result storage pigedit:data data.var.mid float 0.5 run scoreboard players get .mid pigedit.data
scoreboard players operation .i pigedit.data = .dz pigedit.data
scoreboard players operation .i pigedit.data *= #40 pigedit.data
function pigedit:macro/to_var {from:i,to:i}
function pigedit:global/selection/frame/macro_summon_y1 with storage pigedit:data data.var
data modify storage pigedit:data data.var.rot set value 0
scoreboard players operation .max pigedit.data = .miny pigedit.data
scoreboard players operation .max pigedit.data += .dy pigedit.data
function pigedit:macro/to_var {from:max,to:max}
function pigedit:global/selection/frame/macro_summon_y2 with storage pigedit:data data.var


scoreboard players operation .max pigedit.data = .dx pigedit.data
scoreboard players operation .max pigedit.data *= .dy pigedit.data
function pigedit:global/selection/frame/spaces/
scoreboard players operation .mid pigedit.data = .minx pigedit.data
scoreboard players operation .mid pigedit.data *= #2 pigedit.data
scoreboard players operation .mid pigedit.data += .dx pigedit.data
execute store result storage pigedit:data data.var.mid float 0.5 run scoreboard players get .mid pigedit.data
scoreboard players operation .i pigedit.data = .dx pigedit.data
scoreboard players operation .i pigedit.data *= #40 pigedit.data
function pigedit:macro/to_var {from:i,to:i}
function pigedit:global/selection/frame/macro_summon_z1 with storage pigedit:data data.var
data modify storage pigedit:data data.var.rot set value 0
scoreboard players operation .max pigedit.data = .minz pigedit.data
scoreboard players operation .max pigedit.data += .dz pigedit.data
function pigedit:macro/to_var {from:max,to:max}
function pigedit:global/selection/frame/macro_summon_z2 with storage pigedit:data data.var

