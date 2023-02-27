
# as-at: player


#trigger
scoreboard players operation arg pigedit.data = @s pigedit.pos2
scoreboard players set @s pigedit.pos2 0
scoreboard players enable @s pigedit.pos2

#execution
execute store result score @s pigedit.data.pos2x run data get entity @s Pos[0]
execute store result score @s pigedit.data.pos2y run data get entity @s Pos[1]
execute store result score @s pigedit.data.pos2z run data get entity @s Pos[2]

function pigedit:global/selection/view
tellraw @s ["",{"text":"Second position set (","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"pigedit.data.pos2x"},"italic":true,"color":"gray"},{"text":", ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"pigedit.data.pos2y"},"italic":true,"color":"gray"},{"text":", ","italic":true,"color":"gray"},{"score":{"name":"@s","objective":"pigedit.data.pos2z"},"italic":true,"color":"gray"},{"text":")","italic":true,"color":"gray"}]