
# as-at: player


# Set var
function pigedit:global/selection/into_var
data modify storage pigedit:data data.var.block set value "air"
execute unless data entity @s SelectedItem.tag.pigedit run data modify storage pigedit:data data.var.block set from entity @s SelectedItem.id

# Macros
function pigedit:macro/fill with storage pigedit:data data.var