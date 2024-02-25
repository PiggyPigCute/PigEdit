
#as: player

execute if score .mask_number pigedit.data matches 1.. run function pigedit:cmd/fill/hard/f__macro_mask with storage pigedit:data data.var
execute if score .mask_number pigedit.data matches 0 run function pigedit:cmd/fill/hard/g__if_pattern

scoreboard players remove .pz pigedit.data 1

execute if score .pz pigedit.data matches 1.. positioned ~ ~ ~1 run function pigedit:cmd/fill/hard/e__set_z