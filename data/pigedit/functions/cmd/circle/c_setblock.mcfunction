

# execute if block ~ ~-1 ~ #pigedit:air run summon marker ~ ~-1 ~ {Tags:["pigedit.circle.air"]}
# execute if block ~ ~-1 ~ #pigedit:air run setblock ~ ~-1 ~ barrier
summon falling_block ~ ~ ~ {BlockState:{Name:"structure_void"},DropItem:false,Tags:["pigedit.place_block"],Time:-1}
data modify entity @e[type=falling_block,tag=pigedit.place_block,limit=1] BlockState.Name set from storage pigedit:data PlaceBlock.id