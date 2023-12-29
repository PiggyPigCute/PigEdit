
# as-at: player


# Size
function pigedit:global/selection/get_size


# Tellraw
execute store result storage pigedit:data data.var.size int 1 run scoreboard players get size pigedit.data
function pigedit:global/selection/into_var
function pigedit:macro/tellraw/pos with storage pigedit:data data.var


# View
function pigedit:global/selection/view