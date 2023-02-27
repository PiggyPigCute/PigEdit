
# as-at: player


#trigger
scoreboard players operation arg pigedit.data = @s pigedit.pos1
scoreboard players set @s pigedit.pos1 0
scoreboard players enable @s pigedit.pos1

#execution
execute store result score @s pigedit.data.pos1x run data get entity @s Pos[0]
execute store result score @s pigedit.data.pos1y run data get entity @s Pos[1]
execute store result score @s pigedit.data.pos1z run data get entity @s Pos[2]

function pigedit:global/selection/view
tellraw @s ["",{"text":"First position set (","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"pigedit.data.pos1x"},"italic":true,"color":"gray"},{"text":", ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"pigedit.data.pos1y"},"italic":true,"color":"gray"},{"text":", ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"pigedit.data.pos1z"},"italic":true,"color":"gray"},{"text":")","italic":true,"color":"gray"}]