
# as-at: player


# Copy
function pigedit:cmd/copy/

# Clear
data modify storage pigedit:data data.var.block set value "air"
function pigedit:global/selection/into_var
function pigedit:cmd/fill/macro with storage pigedit:data data.var