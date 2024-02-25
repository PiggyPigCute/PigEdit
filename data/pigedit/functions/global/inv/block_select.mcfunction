
# as: player

# return in data.var.block or in data.var.pattern (in the storage) the selected block


# Fill Pattern
data remove storage pigedit:data data.var.pattern
execute if data entity @s SelectedItem.tag.pigedit.pattern run data modify storage pigedit:data data.var.pattern set from entity @s SelectedItem.tag.pigedit.pattern
execute if data entity @s SelectedItem.tag.BlockEntityTag.Items run data modify storage pigedit:data data.var.pattern set from entity @s SelectedItem.tag.BlockEntityTag.Items

# Return
execute if data entity @s SelectedItem.tag.pigedit run return fail
execute if data entity @s SelectedItem.tag.BlockEntityTag.Items run return fail

# Fill Block
data modify storage pigedit:data data.var.block set value "air"
data modify storage pigedit:data data.var.block set from entity @s SelectedItem.id
