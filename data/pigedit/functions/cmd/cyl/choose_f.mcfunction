
# Placings
scoreboard players operation .x1 pigedit.data = .px pigedit.data
scoreboard players operation .x1 pigedit.data += .x pigedit.data
scoreboard players operation .x2 pigedit.data = .px pigedit.data
scoreboard players operation .x2 pigedit.data -= .x pigedit.data
scoreboard players operation .z1 pigedit.data = .pz pigedit.data
scoreboard players operation .z1 pigedit.data += .y pigedit.data
scoreboard players operation .z2 pigedit.data = .pz pigedit.data
scoreboard players operation .z2 pigedit.data -= .y pigedit.data
function pigedit:macro/to_var {from:x1,to:pos1x}
function pigedit:macro/to_var {from:z1,to:pos1z}
function pigedit:macro/to_var {from:x2,to:pos2x}
function pigedit:macro/to_var {from:z2,to:pos2z}
function pigedit:macro/fill with storage pigedit:data data.var
scoreboard players operation .x1 pigedit.data = .px pigedit.data
scoreboard players operation .x1 pigedit.data += .y pigedit.data
scoreboard players operation .x2 pigedit.data = .px pigedit.data
scoreboard players operation .x2 pigedit.data -= .y pigedit.data
scoreboard players operation .z1 pigedit.data = .pz pigedit.data
scoreboard players operation .z1 pigedit.data += .x pigedit.data
scoreboard players operation .z2 pigedit.data = .pz pigedit.data
scoreboard players operation .z2 pigedit.data -= .x pigedit.data
function pigedit:macro/to_var {from:x1,to:pos1x}
function pigedit:macro/to_var {from:z1,to:pos1z}
function pigedit:macro/to_var {from:x2,to:pos2x}
function pigedit:macro/to_var {from:z2,to:pos2z}
function pigedit:macro/fill with storage pigedit:data data.var


# Bresenham Algo
scoreboard players remove .y pigedit.data 1
scoreboard players operation .z pigedit.data = .y pigedit.data
scoreboard players operation .z pigedit.data *= .8 pigedit.const
scoreboard players operation .m pigedit.data -= .z pigedit.data
