
# as-at: player


# Size
function pigedit:global/selection/get_size


# Tellraw
execute store result score .max pigedit.data run gamerule commandModificationBlockLimit
function pigedit:macro/to_var {from:size, to:size}
function pigedit:macro/to_var {from:max, to:max}
function pigedit:macro/to_var {from:dx, to:dx}
function pigedit:macro/to_var {from:dy, to:dy}
function pigedit:macro/to_var {from:dz, to:dz}
function pigedit:global/selection/into_var
execute if score .size pigedit.data > .max pigedit.data run function pigedit:macro/tellraw/pos_max with storage pigedit:data data.var
execute if score .size pigedit.data <= .max pigedit.data run function pigedit:macro/tellraw/pos with storage pigedit:data data.var


# View
execute if score .selection_frame pigedit.settings matches 0 run function pigedit:global/selection/particles/