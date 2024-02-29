
data modify storage pigedit:data data.mask append value {neg_cond:if, neg_display:"", cond:" block ~ ~ ~ #bs.hitbox:intangible ", display:"= airs"}
tellraw @s ["",{"text":"Mask ","color":"gray","italic":true},{"text":"= airs","color":"aqua"},{"text":" succefully added","color":"gray","italic":true}]

scoreboard players add .mask_number pigedit.data 1
