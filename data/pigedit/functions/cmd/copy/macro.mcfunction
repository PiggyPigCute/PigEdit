
# as: player

# StructureBlock and RedstoneBlock
$setblock $(x) $(miny) $(minz) structure_block{ignoreEntities:0b,mode:"SAVE",posX:1,posY:0,posZ:0,sizeX:$(dx),sizeY:$(dy),sizeZ:$(dz),name:"pigedit:clipboard.$(uuid0).$(uuid1).$(uuid2).$(uuid3)"}
$setblock $(x) $(miny) $(z) redstone_block
$fill $(x) $(miny) $(minz) $(x) $(miny) $(z) air

# Tellraw
$tellraw @s ["", {"text": "Area succefully copied from [$(pos1x), $(pos1y), $(pos1z)] to [$(pos2x), $(pos2y), $(pos2z)]", "color": "gray", "italic": true}]