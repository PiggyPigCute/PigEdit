
$data modify storage pigedit:data data.mask append value {neg_cond:if, neg_display:"", cond:" $(raw) ", display:" $(raw)"}
$tellraw @s ["",{"text":"Mask ","color":"gray","italic":true},{"text":"$(raw)","color":"aqua"},{"text":" succefully added","color":"gray","italic":true}]

scoreboard players add .mask_number pigedit.data 1
