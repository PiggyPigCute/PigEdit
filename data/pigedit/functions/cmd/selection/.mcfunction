
# as-at: player


#triger
scoreboard players operation arg pigedit.data = @s pigedit.selection
scoreboard players set @s pigedit.selection 0
scoreboard players enable @s pigedit.selection


#scores
scoreboard players operation dx pigedit.data = @s pigedit.data.pos1x
scoreboard players operation dx pigedit.data -= @s pigedit.data.pos2x
execute if score dx pigedit.data matches ..-1 run scoreboard players operation dx pigedit.data *= -1 pigedit.const

scoreboard players operation dy pigedit.data = @s pigedit.data.pos1y
scoreboard players operation dy pigedit.data -= @s pigedit.data.pos2y
execute if score dy pigedit.data matches ..-1 run scoreboard players operation dy pigedit.data *= -1 pigedit.const

scoreboard players operation dz pigedit.data = @s pigedit.data.pos1z
scoreboard players operation dz pigedit.data -= @s pigedit.data.pos2z
execute if score dz pigedit.data matches ..-1 run scoreboard players operation dz pigedit.data *= -1 pigedit.const

scoreboard players operation total pigedit.data = dx pigedit.data
scoreboard players operation total pigedit.data *= dy pigedit.data
scoreboard players operation total pigedit.data *= dz pigedit.data


#execution
function pigedit:global/selection/view
tellraw @a ["",{"text":"Selection (","italic":true,"color":"gray"},{"score":{"name":"total","objective":"pigedit.data"},"italic":true,"color":"gray"},{"text":"m³) from ","italic":true,"color":"gray"},{"text":"[","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos1x"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":", ","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos1y"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":", ","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos1z"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":"]","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":" to ","italic":true,"color":"gray"},{"text":"[","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos2x"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":", ","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos2y"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":", ","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos2z"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":"]","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}}]