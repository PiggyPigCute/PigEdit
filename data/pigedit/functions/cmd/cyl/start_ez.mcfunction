scoreboard players set .ez pigedit.data 1
function pigedit:macro/to_var {from:miny, to:pos1y}
scoreboard players operation .dy pigedit.data += .miny pigedit.data
scoreboard players remove .dy pigedit.data 1
function pigedit:macro/to_var {from:dy, to:pos2y}
