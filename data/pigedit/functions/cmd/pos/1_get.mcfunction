
# as-at: player


#trigger
scoreboard players operation arg pigedit.data = @s pigedit.pos1.get
scoreboard players set @s pigedit.pos1.get 0
scoreboard players enable @s pigedit.pos1.get

#execution
tellraw @s ["",{"text":"Your first psition is set to "},{"text":"[","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos1x"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":", ","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos1y"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":", ","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos1z"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":"]","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/1_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}}]

function pigedit:global/selection/view