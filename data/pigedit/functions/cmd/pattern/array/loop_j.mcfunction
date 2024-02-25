
data modify storage pigedit:data data.var.array append from storage pigedit:data data.var.i

# LOOP
scoreboard players add .j pigedit.data 1
execute if score .j pigedit.data < .get pigedit.data run function pigedit:cmd/pattern/array/loop_j

