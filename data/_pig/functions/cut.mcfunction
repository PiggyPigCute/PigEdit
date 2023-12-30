
# as-at: player


# Copy
function pigedit:cmd/copy/

# Clear
function pigedit:global/selection/into_var
data modify storage pigedit:data data.var.block set value "air"
function pigedit:macro/fill with storage pigedit:data data.var