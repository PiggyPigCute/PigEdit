$data modify storage pigedit:data data.mask append value {neg:if, cond:" block ~ ~1 ~ $(block) ", display:"< $(block)"}
$tellraw @s ["",{"text":"Mask ","color":"gray","italic":true},{"text":"< $(block)","color":"aqua"},{"text":" succefully added","color":"gray","italic":true}]