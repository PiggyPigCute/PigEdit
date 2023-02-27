
#as: player

scoreboard players remove px pigedit.data 128

scoreboard players operation pz pigedit.data = dz pigedit.data
function pigedit:cmd/fill/zend_z

execute if score px pigedit.data matches 0.. positioned ~1 ~ ~ run function pigedit:cmd/fill/zend_x