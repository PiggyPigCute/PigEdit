$data modify storage pigedit:data data.mask append value {neg_cond:if, cond:" block ~ ~1 ~ $(block) ", neg_display:"", display:"< $(block)"}
$tellraw @s ["",{"text":"Mask ","color":"gray","italic":true},{"text":"< $(block)","color":"aqua"},{"text":" succefully added","color":"gray","italic":true}]

scoreboard players add .mask_number pigedit.data 1
