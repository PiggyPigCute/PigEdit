$tellraw @s ["",{"text":"Selection ($(size)m³) from ","italic":true,"color":"gray"},{"text":"[$(pos1x), $(pos1y), $(pos1z)]","color":"green","clickEvent":{"action":"run_command","value":"/tp $(pos1x) $(pos1y) $(pos1z)"},"hoverEvent":{"action":"show_text","contents":"Click to go"}},{"text":" to ","italic":true,"color":"gray"},{"text":"[$(pos2x), $(pos2y), $(pos2z)]","color":"green","clickEvent":{"action":"run_command","value":"/tp $(pos2x) $(pos2y) $(pos2z)"},"hoverEvent":{"action":"show_text","contents":"Click to go"}}]