
# fill command with masks
#  -> requires  dx, dy, dz, minx, miny, minz  in pigedit.data
#  -> requires  bloc  in pigedit:data

# Get Mask
function pigedit:cmd/mask/get/

# Start
scoreboard players operation .px pigedit.data = .dx pigedit.data
function pigedit:macro/to_var {from:minx,to:minx}
function pigedit:macro/to_var {from:miny,to:miny}
function pigedit:macro/to_var {from:minz,to:minz}
function pigedit:cmd/fill/mask/b__macro_min with storage pigedit:data data.var