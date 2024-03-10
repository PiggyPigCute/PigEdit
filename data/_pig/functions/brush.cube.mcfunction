
$data modify storage pigedit:data data.item set value {pigedit:{brush:{name:cube,r:$(r)}},display:{Name:'{"text":"Brush","italic":false}',Lore:['{"text":"Cube","color":"gray","italic":false}','{"text":" (r:$(r))","color":"gray","italic":false}']},Enchantments:[{}]}
function pigedit:global/block/macro_get {data:"entity @s Inventory[{Slot:-106b}]"}
function pigedit:global/block/clean_minecraft
execute unless data storage pigedit:data data.var.pattern run function pigedit:cmd/brush/apply/append_block_macro with storage pigedit:data data.var
execute if data storage pigedit:data data.var.pattern run function pigedit:cmd/brush/apply/append_pattern
item modify entity @s weapon.mainhand pigedit:item
