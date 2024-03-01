
data modify storage pigedit:data data.mask append value {neg_cond:if, neg_display:"", cond:" block ~ ~ ~ #bs.hitbox:intangible ", display:"= airs"}
function pigedit:cmd/mask/add/macro_tellraw {display:"= airs"}

scoreboard players add .mask_number pigedit.data 1
