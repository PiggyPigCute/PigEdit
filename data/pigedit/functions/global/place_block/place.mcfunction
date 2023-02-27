
# at: block placement


summon falling_block ~ ~ ~ {BlockState:{Name:"structure_void"},DropItem:false,Tags:["pigedit.place_block"],Time:-1}
data modify entity @e[type=falling_block,tag=pigedit.place_block,distance=..0.1,limit=1] BlockState.Name set from storage pigedit:data PlaceBlock.id