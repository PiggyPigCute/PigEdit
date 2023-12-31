
# fill command executed
#  -> requires  bloc  in pigedit:data



# Without mask
execute if score .mask_number pigedit.data matches 0 run function pigedit:cmd/fill/player/classic

# With mask
execute if score .mask_number pigedit.data matches 1.. run function pigedit:cmd/fill/player/mask