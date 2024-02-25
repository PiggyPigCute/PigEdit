
# fill command executed
#  -> requires  bloc  in pigedit:data



# ez
scoreboard players set .ez pigedit.data 0
execute if score .mask_number pigedit.data matches 0 unless data storage pigedit:data data.var.pattern run function pigedit:cmd/fill/player/ez

# hard
execute if score .ez pigedit.data matches 0 run function pigedit:cmd/fill/player/hard