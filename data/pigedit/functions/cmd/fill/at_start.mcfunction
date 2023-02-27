
# as: player
# at: start



scoreboard players operation px pigedit.data = dx pigedit.data
execute positioned ~ ~-1 ~ run function pigedit:cmd/fill/pre_x

scoreboard players operation px pigedit.data = dx pigedit.data
function pigedit:cmd/fill/set_x

scoreboard players operation px pigedit.data = dx pigedit.data
execute positioned ~ ~-1 ~ run function pigedit:cmd/fill/zend_x
