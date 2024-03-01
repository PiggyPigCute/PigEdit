$data modify storage pigedit:data data.mask append value {neg_cond:if, cond:" block ~ ~1 ~ $(block) ", neg_display:"", display:"< $(block)"}
$function pigedit:cmd/mask/add/macro_tellraw {display:"< $(block)"}

scoreboard players add .mask_number pigedit.data 1
