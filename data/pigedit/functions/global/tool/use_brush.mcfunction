execute store result storage bs:in raycast.max_distance float 1 run scoreboard players get .brush_reach pigedit.settings
execute anchored eyes positioned ^ ^ ^ run function #bs.raycast:run

execute unless data storage bs:out raycast.targeted_block run return fail

data modify storage pigedit:data data.var merge from entity @s SelectedItem.tag.pigedit.brush

execute if data storage pigedit:data {data:{var:{name:cyl}}} run function pigedit:cmd/brush/cyl/
execute if data storage pigedit:data {data:{var:{name:rect}}} run function pigedit:cmd/brush/rect/
execute if data storage pigedit:data {data:{var:{name:cube}}} run function pigedit:cmd/brush/cube/
execute if data storage pigedit:data {data:{var:{name:raw}}} run function pigedit:cmd/brush/raw/
execute if data storage pigedit:data {data:{var:{name:paste}}} run function pigedit:cmd/brush/paste/
