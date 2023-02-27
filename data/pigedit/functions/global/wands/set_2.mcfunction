
# as-at: marker

tag @p[tag=pigedit.wands.use] add pigedit.wands.set
execute store result score @a[tag=pigedit.wands.set,limit=1] pigedit.data.pos2x run data get entity @s Pos[0]
execute store result score @a[tag=pigedit.wands.set,limit=1] pigedit.data.pos2y run data get entity @s Pos[1]
execute store result score @a[tag=pigedit.wands.set,limit=1] pigedit.data.pos2z run data get entity @s Pos[2]

tellraw @a[tag=pigedit.wands.set,limit=1] ["",{"text":"Second position set (","italic":true,"color":"gray"},{"score":{"name":"@a[tag=pigedit.wands.set,limit=1]","objective":"pigedit.data.pos2x"},"italic":true,"color":"gray"},{"text":", ","italic":true,"color":"gray"},{"score":{"name":"@a[tag=pigedit.wands.set,limit=1]","objective":"pigedit.data.pos2y"},"italic":true,"color":"gray"},{"text":", ","italic":true,"color":"gray"},{"score":{"name":"@a[tag=pigedit.wands.set,limit=1]","objective":"pigedit.data.pos2z"},"italic":true,"color":"gray"},{"text":")","italic":true,"color":"gray"}]
particle dust 0.157 0.451 0.725 2 ~ ~ ~ .4 .4 .4 0 100

tag @a[tag=pigedit.wands.set,limit=1] remove pigedit.wands.use
tag @a[tag=pigedit.wands.set,limit=1] remove pigedit.wands.set

kill @s