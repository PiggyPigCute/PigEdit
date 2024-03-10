
# return in data.var.block or in data.var.pattern (in the storage) the block $(data)


# Fill Pattern
$execute unless data $(data).tag.pigedit run data remove storage pigedit:data data.var.pattern
$execute if data $(data).tag.pigedit.pattern run data modify storage pigedit:data data.var.pattern set from $(data).tag.pigedit.pattern
$execute if data $(data).tag.BlockEntityTag.Items run data modify storage pigedit:data data.var.pattern set from $(data).tag.BlockEntityTag.Items

# Return
$execute if data $(data).tag.pigedit run return fail
$execute if data $(data).tag.BlockEntityTag.Items run return fail

# Fill Block
data modify storage pigedit:data data.var.block set value "air"
$data modify storage pigedit:data data.var.block set from $(data).id
