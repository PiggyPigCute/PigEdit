
function pigedit:global/selection/get_min
function pigedit:global/selection/get_size

scoreboard players operation .px pigedit.data = .dx pigedit.data
scoreboard players operation .py pigedit.data = .dy pigedit.data
scoreboard players operation .pz pigedit.data = .dz pigedit.data
scoreboard players add .px pigedit.data 1
scoreboard players add .py pigedit.data 1
scoreboard players add .pz pigedit.data 1
scoreboard players operation .px pigedit.data %= #2 pigedit.data
scoreboard players operation .py pigedit.data %= #2 pigedit.data
scoreboard players operation .pz pigedit.data %= #2 pigedit.data
scoreboard players operation .dx pigedit.data /= #2 pigedit.data
scoreboard players operation .dy pigedit.data /= #2 pigedit.data
scoreboard players operation .dz pigedit.data /= #2 pigedit.data
scoreboard players operation .minx pigedit.data += .dx pigedit.data
scoreboard players operation .miny pigedit.data += .dy pigedit.data
scoreboard players operation .minz pigedit.data += .dz pigedit.data
function pigedit:macro/to_var {from:minx,to:pos1x}
function pigedit:macro/to_var {from:miny,to:pos1y}
function pigedit:macro/to_var {from:minz,to:pos1z}
scoreboard players operation .minx pigedit.data -= .px pigedit.data
scoreboard players operation .miny pigedit.data -= .py pigedit.data
scoreboard players operation .minz pigedit.data -= .pz pigedit.data
function pigedit:macro/to_var {from:minx,to:pos2x}
function pigedit:macro/to_var {from:miny,to:pos2y}
function pigedit:macro/to_var {from:minz,to:pos2z}
function pigedit:global/block/get_select
function pigedit:cmd/fill/macro with storage pigedit:data data.var

