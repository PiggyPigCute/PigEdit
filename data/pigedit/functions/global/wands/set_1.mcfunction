
# as-at: marker

tag @p[tag=pigedit.wands.use] add pigedit.wands.set
execute store result score @a[tag=pigedit.wands.set,limit=1] pigedit.data.pos1x run data get entity @s Pos[0]
execute store result score @a[tag=pigedit.wands.set,limit=1] pigedit.data.pos1y run data get entity @s Pos[1]
execute store result score @a[tag=pigedit.wands.set,limit=1] pigedit.data.pos1z run data get entity @s Pos[2]

# Display
execute as @a[tag=pigedit.wands.set,limit=1] run function pigedit:global/selection/into_var
execute as @a[tag=pigedit.wands.set,limit=1] run function pigedit:macro/tellraw/set_pos_1 with storage pigedit:data data.var
particle dust 1 0 0 2 ~ ~ ~ .4 .4 .4 0 100

tag @a[tag=pigedit.wands.set,limit=1] remove pigedit.wands.use
tag @a[tag=pigedit.wands.set,limit=1] remove pigedit.wands.set
kill @s