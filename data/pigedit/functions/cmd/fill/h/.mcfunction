
scoreboard players set .ez pigedit.data 0

# ez
execute if score .mask_number pigedit.data matches 0 unless data storage pigedit:data data.var.pattern run function pigedit:cmd/fill/h/ez

# hard
execute if score .ez pigedit.data matches 0 run function pigedit:cmd/fill/h/hard