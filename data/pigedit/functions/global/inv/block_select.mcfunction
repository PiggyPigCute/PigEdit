
# as: player

# return in data.var.block (in the storage) the selected block

execute if data entity @s SelectedItem.tag.pigedit.item_wand run return fail
data modify storage pigedit:data data.var.block set value "air"
data modify storage pigedit:data data.var.block set from entity @s SelectedItem.id
