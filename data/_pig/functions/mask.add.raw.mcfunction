
$data modify storage pigedit:data data.mask append value {neg:if, cond:" $(raw) ", display:" $(raw)", base_display:" $(raw)"}
$tellraw @s ["",{"text":"Mask ","color":"gray","italic":true},{"text":"$(raw)","color":"aqua"},{"text":" succefully added","color":"gray","italic":true}]

scoreboard players add .mask_number pigedit.data 1
