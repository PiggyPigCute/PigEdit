
$data modify storage pigedit:data data.mask append value {neg_cond:if, neg_display:"", cond:" block ~ ~ ~ #$(tag) ", display:"= #$(tag)"}
$function pigedit:cmd/mask/add/macro_tellraw {display:"= #$(tag)"}

scoreboard players add .mask_number pigedit.data 1
