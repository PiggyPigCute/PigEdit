
# as-at: player



# Set var
function pigedit:global/inv/block_select
function pigedit:global/selection/into_var
function pigedit:global/selection/get_min
function pigedit:global/selection/get_size

# Without mask
execute if score .mask_number pigedit.data matches ..0 run function pigedit:macro/fill with storage pigedit:data data.var
execute if score .mask_number pigedit.data matches 1.. run function pigedit:cmd/fill/