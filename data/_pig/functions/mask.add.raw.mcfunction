
$data modify storage pigedit:data data.mask append value {neg_cond:if, neg_display:"", cond:" $(raw) ", display:" $(raw)"}
$function pigedit:cmd/mask/add/macro_tellraw {display:"$(raw)"}

scoreboard players add .mask_number pigedit.data 1
