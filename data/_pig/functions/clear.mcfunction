
# as-at: player


# Set var
data modify storage pigedit:data data.var.block set value "air"
function pigedit:global/selection/into_var

# Macro
function pigedit:cmd/fill/macro with storage pigedit:data data.var