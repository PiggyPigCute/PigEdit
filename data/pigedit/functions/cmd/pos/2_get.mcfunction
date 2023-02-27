
# as-at: player


#trigger
scoreboard players operation arg pigedit.data = @s pigedit.pos2.get
scoreboard players set @s pigedit.pos2.get 0
scoreboard players enable @s pigedit.pos2.get

#execution
tellraw @s ["",{"text":"Your second position is set to "},{"text":"[","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos2x"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":", ","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos2y"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":", ","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"score":{"name":"@s","objective":"pigedit.data.pos2z"},"color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":"]","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/pos/2_go"},"hoverEvent":{"action":"show_text","contents":"Click to go"}}]

function pigedit:global/selection/view