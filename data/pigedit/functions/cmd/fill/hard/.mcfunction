
# fill command with masks
#  -> requires  dx, dy, dz, minx, miny, minz  in pigedit.data
#  -> requires  bloc  in pigedit:data


# Mask

# Get Mask and Pattern Sum
execute if score .mask_number pigedit.data matches 1.. run function pigedit:cmd/mask/get/
scoreboard players set .sum pigedit.data 0
execute if data storage pigedit:data data.var.pattern run function pigedit:cmd/pattern/sum/
execute if score .sum pigedit.data matches 1.. run function pigedit:cmd/pattern/array/

# Start
scoreboard players operation .px pigedit.data = .dx pigedit.data
function pigedit:macro/to_var {from:minx,to:minx}
function pigedit:macro/to_var {from:miny,to:miny}
function pigedit:macro/to_var {from:minz,to:minz}
function pigedit:cmd/fill/hard/b__macro_min with storage pigedit:data data.var
