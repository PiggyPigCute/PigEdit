# PigEdit

A 1.20.4 DataPack like WorldEdit

# Commands

By default, the line for the commands is `/function _pig:<command>` but you can modify the prefix `_pig` renaming the folder "_pig" into any valid namespace (don't rename the "pigedit" forlder)

## Selection

You can select an area choosing two corners. Several commands effect in the selection.

### Wands

`/function _pig:wands`: Give you the two selector items

* Right Click to set the first or the second position (the corners of the selection)
* Drop any wand to display the selection

### Pos command

`/function _pig:pos`: Give you information about the selected area

* Volume of the selected area (in m³)
* The volume turns orange when it's bigger than the commandModificationBlockLimit gamerule (you can click to increase the limit)
* Coordinates of the first position (you can click to teleport to the first position)
* Coordinates of the second position (you can also click to teleport)
* Length along x, y, z of the selected area
* `[Pos1]` button to set the first position at your current position
* `[Pos2]` button to set the second position at your current position

## Build

`/function _pig:fill`: Fill the selected area with your SelectedBloc (bloc in your hand)  ⟨🎭⟩⟨🎨⟩

`/function _pig:clear`: Clear all the blocks in the selection

`/function _pig:cyl {r:__,h:__}`: Create a cylinder with yout SelectedBlock with a radius of `r` and a height of `h`.  ⟨🎭⟩⟨🎨⟩

### SelectedBlock

"SelectedBlock" means the block in your main hand

* If your main hand is empty, the "SelectedBlock" is air
* If you have a wand in your main hand, the "SelectedBlock" is the same as the last block used

## Clipboard

`/function _pig:copy`: Copy the selected area in your Clipbaord

`/function _pig:paste`: Paste the content of your Clipboard at your position

`/function _pig:cut`: Clear and copy the selected area in your Clipbaord

 **→** Your relative position between you and the copied structure is the same when you copy and when you paste (like WorldEdit)

 ⚠️ The Clipboards are limited to 48×48×48

NB : The clipboards aren't shared between players. Each play have his own clipbaord.

## 🎭 Masks

The masks add conditions to blocks to be modified when other commands are used.

Masks effect on the commands with the symbol ⟨🎭⟩

When you have several masks, only the blocks checking all the masks are replaced

`/function _pig:mask.`: Give you the list of the current masks

* Click on the 🗑️ button to remove a mask
* Click on the 🔄️ button to negate a mask

`/function _pig:mask.add.block`: Add a mask that filter the SelectedBlocks

`/function _pig:mask.add.sup`: Add a mask that filter the blocks just over SelectedBlocks

`/function _pig:mask.add.inf`: Add a mask that filter the blocks just under SelectedBlocks

`/function _pig:mask.add.raw {raw:__}`: Add a custom mask

* For example `/function _pig:mask.add.raw {raw:"entity @e[type=pig,distance=..3]"}` creates a mask that filter the blocks near to a pig

`/function _pig:mask.negate.last`: Negate the last mask (The negation of a mask filter all the block that wasn't filtered by the previous mask)

`/function _pig:mask.negate.n {n:__}`: Negate the mask at the position `n`

`/function _pig:mask.remove.all`: Remove all the current masks

`/function _pig:mask.remove.n {n:__}`: Remove the mask at the position `n`

## 🎨 Patterns

The matterns allow place random mix of a weighted list of blocks.

Patterns effects on the commands with the symbol ⟨🎨⟩.

A pattern is an item, and you have to select it (instead of a basic block) in your main hand to use it.

A filled shulker box works like a pattern (where the Counts of each item is the weight). It's also works with any block with `tag.BlockEntityTag.Items` (like chests or barrel "+NBT")

You can also turn any item into a pattern. Place a filled container (as explained just above) is your offhand and any item in your main hand, then use the command `/function _pig:pattern` to turn the item (in the mainhand) into a pattern (with the content of the container).
