data modify storage pigedit:data data.item.display.Lore append value '{"text":"Pattern:","italic":false,"color":"gray"}'
function pigedit:cmd/pattern/lore/
data modify storage pigedit:data data.item.display.Lore append from storage pigedit:data data.var.lore[]
data modify storage pigedit:data data.item.pigedit.brush.pattern set from storage pigedit:data data.var.pattern