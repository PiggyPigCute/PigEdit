
# Start
data modify storage pigedit:data data.var.pattern set from entity @s Inventory[{Slot:-106b}].tag.BlockEntityTag.Items
function pigedit:cmd/pattern/lore/

# Apply to item
item modify entity @s weapon.mainhand pigedit:pattern_from_container