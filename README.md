# PigEdit

A 1.20.4 DataPack like WorldEdit

# Commands

By default, the line for the commands is `/function _pig:<command>` but you can modify the prefix `_pig` renaming the folder "_pig" into any valid namespace (don't rename the "pigedit" forlder)

## Selection

You can select an area choosing two corners. Several commands effect in the selection.

### Tool

`/function _pig:tool`: Give you the tool

* Right Click to set a corner of the selection

### Pos command

`/function _pig:pos`: Give you information about the selected area

* Volume of the selected area (in m³)
* The volume turns orange when it's bigger than the commandModificationBlockLimit gamerule (you can click to increase the limit)
* Coordinates of the first position (you can click to teleport)
* Coordinates of the second position (you can also click to teleport)
* Length along x, y, z of the selected area
* `[Pos1]` button to set the first position at your current position
* `[Pos2]` button to set the second position at your current position

### Frame

There are two ways to display the selected area. The first way uses particles (red particles at first position and blue particles at second one), the second way displays wide pannels (named "frame") and cover the whole area. The second way is easier to understand and vizualize but less optimized. You can switch display using `/function _pig:frame` or modify the value of `.selection_frame` in score `pigedit.settings` (editable with `/function _pig:settings`, `0` means display with particles and `1` means display with frame).

Morever, when you use the second way, the frame doesn't display when the area is very huge. More precisely, when the size (number of block) of the area is bigger than the value of `.max_frame_size` in the score `pigedit.settings` (editable with `/function _pig:settings`, default value is `1000000`).

### Middle

`/function _pig:middle` with a block in your hand place block(s) place blocks at the middle of the selected area. It places 1 or 2 blocks along each axis depending of the parity of the selection.

## Build

`/function _pig:fill`: Fill the selected area with your SelectedBloc (bloc in your hand)  ⟨🎭⟩⟨🎨⟩

`/function _pig:hfill`: Fill only the borders of the selected area with your SelectedBlock.  ⟨🎭⟩⟨🎨⟩

`/function _pig:clear`: Clear all the blocks in the selection.

`/function _pig:cyl {r:__,h:__}`: Create a cylinder with your SelectedBlock with a radius of `r` and a height of `h`. You are the center of the base of the cylinder. ⟨🎭⟩⟨🎨⟩

`/function _pig:stack {stack:__}`: Duplicate the seleted area `stack` times in the direcrtion of your gaze.

`/function _pig:stack.offset {stack:__, offset:"~__ ~__ ~__"}`: Duplicate the seleted area `stack` times with an offset of `offset` between each copies.

### SelectedBlock

"SelectedBlock" means the block in your main hand

* If your main hand is empty, the "SelectedBlock" is air
* If you have the Tool in your main hand, the "SelectedBlock" is the same as the last block used
* You can have de "pattern" item or a filled ShulkerBox → Patterns chapter

## Clipboard

`/function _pig:copy`: Copy the selected area in your Clipbaord.

`/function _pig:paste`: Paste the content of your Clipboard at your position.

`/function _pig:cut`: Clear and copy the selected area in your Clipbaord.

 **→** Your relative position between you and the copied structure is the same when you copy and when you paste (like WorldEdit)

 ⚠️ The Clipboards are limited to 48×48×48

NB : The clipboards aren't shared between players. Each play have his own clipbaord.

## 🎭 Masks

The masks add conditions to blocks to be modified when other commands are used.

Masks effect on every commands with the symbol ⟨🎭⟩

When you have several masks, only the blocks checking **all** the masks are replaced

`/function _pig:mask.`: Give you the list of the current masks

* Click on the 🗑️ buttons to remove masks
* Click on the 🔄️ buttons to negate masks
* Click on the ➕ button to add a new mask

`/function _pig:mask.add.block`: Add a mask that filter the SelectedBlock.

`/function _pig:mask.add.sup`: Add a mask that filter the blocks just over SelectedBlock.

`/function _pig:mask.add.inf`: Add a mask that filter the blocks just under SelectedBlock.

`/function _pig:mask.add.raw {raw:__}`: Add a custom mask

* For example `/function _pig:mask.add.raw {raw:"entity @e[type=pig,distance=..3]"}` creates a mask that filter the blocks near to a pig

`/function _pig:mask.negate.last`: Negate the last mask (The negation of a mask filter all the block that wasn't filtered by the previous mask)

`/function _pig:mask.negate.n {n:__}`: Negate the `n`-th mask

`/function _pig:mask.remove.all`: Remove all the current masks

`/function _pig:mask.remove.n {n:__}`: Remove the `n`-th mask

## 🎨 Patterns

The patterns allow place random mix of a weighted list of blocks.

Patterns effects on envery commands with the symbol ⟨🎨⟩.

A pattern is an item, and you have to select it (instead of a basic block) in your main hand to use it.

A filled shulker box works like a pattern (where the Counts of each item is the weight). If you want to put air in your pattern, juste put any non-placeable item (carrots for example)

You can also turn any item into a pattern. Place a filled shulker box (as explained just above) in your offhand and any item in your main hand, then use the command `/function _pig:pattern` to turn the item (in the mainhand) into a pattern (with the content of the shulker_box).

## 🖌️ Brushes

You can creates brushes wich are tools that make effects at target point. You have to have the Tool (obtenable with the function `_pig:tool`) in your off hand and the Brush item in your main hand, then just Right click to use the brush.

`/function _pig:brush.cube {r:__}`: Turn the item in your main hand into a brush that place a cube with a radius of `r` (a side of 2*`r`+1) centered on the target position with the block of the off hand ⟨🎭⟩ ⟨🎨⟩.

`/function _pig:brush.cyl {r:__,h:__}`: Turn the item in your main hand into a brush that place a cylinder with a radius of `r` and e height of `h` which the target position is the center of the base with the block of the off hand ⟨🎭⟩ ⟨🎨⟩.

`/function _pig:brush.rect {x:__,y:__,z:__}`: Turn the item in your main hand into a brush that place a rectangular cuboid with sides of 2*`x`+1, 2*`y`+1 and 2*`z`+1 along each direction centered on the target position with the block of the off hand ⟨🎭⟩ ⟨🎨⟩.

`/function _pig:brush.paste`: Turn the item in your main hand into a brush that paste your Clipboard at the target position.

`/function _pig:raw {raw:__}`: Turn the item in your main hand into a brush that execute the `raw` command at the target position.
