
$data modify storage pigedit:data data.mask append value {neg:if, cond:" block ~ ~ ~ #$(tag) ", display:"є #$(tag)", base_display:"є #$(tag)"}
$tellraw @s ["",{"text":"Mask ","color":"gray","italic":true},{"text":"є #$(tag)","color":"aqua"},{"text":" succefully added","color":"gray","italic":true}]

scoreboard players add .mask_number pigedit.data 1
