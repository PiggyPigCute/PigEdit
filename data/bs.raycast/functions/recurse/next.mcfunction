# check block and entity collision (debug: particle minecraft:block_marker barrier ~.5 ~.5 ~.5 0 0 0 0 1)
$execute unless score #raycast.bc bs.data matches 0 unless block ~ ~ ~ $(ignored_blocks) run function bs.raycast:check/block
$execute unless score #raycast.ec bs.data matches 0 as @e[tag=$(solid_entities),tag=!bs.raycast.omit,dx=0] run function bs.raycast:check/entity

# advance on the grid by the shortest length
execute if score #raycast.lx bs.data <= #raycast.ly bs.data if score #raycast.lx bs.data <= #raycast.lz bs.data if score #raycast.lx bs.data <= #raycast.max_distance bs.data run return run function bs.raycast:recurse/x
execute if score #raycast.ly bs.data <= #raycast.lx bs.data if score #raycast.ly bs.data <= #raycast.lz bs.data if score #raycast.ly bs.data <= #raycast.max_distance bs.data run return run function bs.raycast:recurse/y
execute if score #raycast.lz bs.data <= #raycast.lx bs.data if score #raycast.lz bs.data <= #raycast.ly bs.data if score #raycast.lz bs.data <= #raycast.max_distance bs.data run return run function bs.raycast:recurse/z
