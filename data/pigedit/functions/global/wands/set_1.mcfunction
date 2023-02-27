
# as-at: marker

tag @p[tag=pigedit.wands.use] add pigedit.wands.set
execute store result score @a[tag=pigedit.wands.set,limit=1] pigedit.data.pos1x run data get entity @s Pos[0]
execute store result score @a[tag=pigedit.wands.set,limit=1] pigedit.data.pos1y run data get entity @s Pos[1]
execute store result score @a[tag=pigedit.wands.set,limit=1] pigedit.data.pos1z run data get entity @s Pos[2]

tellraw @a[tag=pigedit.wands.set,limit=1] ["",{"text":"First position set (","italic":true,"color":"gray"},{"score":{"name":"@a[tag=pigedit.wands.set,limit=1]","objective":"pigedit.data.pos1x"},"italic":true,"color":"gray"},{"text":", ","italic":true,"color":"gray"},{"score":{"name":"@a[tag=pigedit.wands.set,limit=1]","objective":"pigedit.data.pos1y"},"italic":true,"color":"gray"},{"text":", ","italic":true,"color":"gray"},{"score":{"name":"@a[tag=pigedit.wands.set,limit=1]","objective":"pigedit.data.pos1z"},"italic":true,"color":"gray"},{"text":")","italic":true,"color":"gray"}]
particle dust 1 0 0 2 ~ ~ ~ .4 .4 .4 0 100
tag @a[tag=pigedit.wands.set,limit=1] remove pigedit.wands.use
tag @a[tag=pigedit.wands.set,limit=1] remove pigedit.wands.set

kill @s