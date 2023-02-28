
#as: player




execute unless score px pigedit.data = dx pigedit.data run clone ~-1 ~ ~ ~-1 ~ ~ ~ ~ ~ replace force
execute if score px pigedit.data = dx pigedit.data unless score py pigedit.data = dy pigedit.data run clone ~ ~-1 ~ ~ ~-1 ~ ~ ~ ~ replace force
execute if score px pigedit.data = dx pigedit.data if score py pigedit.data = dy pigedit.data unless score pz pigedit.data = dz pigedit.data run clone ~ ~ ~-1 ~ ~ ~-1 ~ ~ ~ replace force


scoreboard players remove pz pigedit.data 1

execute if score pz pigedit.data matches 0.. positioned ~ ~ ~1 run function pigedit:cmd/fill/set_z