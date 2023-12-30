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

* The volume of the selected area (in m³)
* The coordinates of the first position (you can click on to teleport to the first position)
* The coordinates of the second position (you can also click on to teleport)
* A `[Pos1]` button to set the first position at your current position
* A `[Pos2]` button to set the second position at your current position

## Build

`/function _pig:fill`: Fill the selected area with your selected item (bloc in your hand)

If you want to fill with air, you can have an empty hand, you can take a wand in the hand or use the `clear` command.

`/trigger pigedit.clear`: Clear all the blocks in the selection


## Clipboard

`/function _pig:copy`: Copy the selected area in your Clipbaord

`/function _pig:paste`: Paste the content of your Clipboard at your position 

`/function _pig:cut`: Clear and copy the selected area in your Clipbaord

 **→** Your relative position between you and the copied structure is the same when you copy and when you paste (like WorldEdit)

 ⚠️ The Clipboards are limited to 48×48×48

NB : The clipboards aren't shared between players. Each play have his own clipbaord.
