

scoreboard players set .ez pigedit.data 1

function pigedit:macro/to_var {from:minx,to:pos1x}
function pigedit:macro/to_var {from:miny,to:pos1y}
function pigedit:macro/to_var {from:minz,to:pos1z}

scoreboard players operation .minx pigedit.data += .dx pigedit.data
scoreboard players operation .miny pigedit.data += .dy pigedit.data
scoreboard players operation .minz pigedit.data += .dz pigedit.data

function pigedit:macro/to_var {from:minx,to:pos2x}
function pigedit:macro/to_var {from:miny,to:pos2y}
function pigedit:macro/to_var {from:minz,to:pos2z}

function pigedit:cmd/fill/macro with storage pigedit:data data.var