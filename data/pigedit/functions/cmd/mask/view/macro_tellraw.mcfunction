$tellraw @s ["",{"text":"│ ","color":"gold"},{"text":"$(neg)$(display) ","color":"aqua"},{"text":"🔄","color":"green","clickEvent":{"action":"run_command","value":"/function pigedit:cmd/mask/view/click/negate {i:$(i)}"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to negate this mask","color":"green"}}},{"text":"🗑","color":"red","bold":true,"clickEvent":{"action":"run_command","value":"/function pigedit:cmd/mask/view/click/remove {i:$(i)}"},"hoverEvent":{"action":"show_text","contents":{"text":"Click to remove this mask","color":"red"}}}]