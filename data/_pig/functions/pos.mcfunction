
# as-at: player


# Size
function pigedit:global/selection/get_size


# Tellraw
function pigedit:macro/to_var {"from": "size", "to": "size"}
function pigedit:global/selection/into_var
function pigedit:macro/tellraw/pos with storage pigedit:data data.var


# View
function pigedit:global/selection/view