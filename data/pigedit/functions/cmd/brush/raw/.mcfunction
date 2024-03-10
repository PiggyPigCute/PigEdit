
# Clean "/"
data modify storage pigedit:data data.var.name set string storage pigedit:data data.var.raw 0 1
execute store result score .ok pigedit.data run data modify storage pigedit:data data.var.name set value "/"
execute if score .ok pigedit.data matches 0 run data modify storage pigedit:data data.var.raw set string storage pigedit:data data.var.raw 1

# Set vars
data modify storage pigedit:data data.var.x set from storage bs:out raycast.targeted_block[0]
data modify storage pigedit:data data.var.y set from storage bs:out raycast.targeted_block[1]
data modify storage pigedit:data data.var.z set from storage bs:out raycast.targeted_block[2]

# Macro
function pigedit:cmd/brush/raw/macro with storage pigedit:data data.var
