
$data modify storage pigedit:data data.mask append value {neg_cond:if, neg_display:"", cond:" block ~ ~ ~ #$(tag) ", display:"= #$(tag)"}
$tellraw @s ["",{"text":"Mask ","color":"gray","italic":true},{"text":"= #$(tag)","color":"aqua"},{"text":" succefully added","color":"gray","italic":true}]

scoreboard players add .mask_number pigedit.data 1
