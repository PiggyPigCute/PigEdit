# PigEdit
A DataPack like WorldEdit


# Commands

## Selection
`/trigger pigedit.pos1`: Set the fisrt position at your position
`/trigger pigedit.pos2`: Set the second position at your position
`/trigger pigedit.selection`: Display the actual selection and say the size and the two position coordinates
(Click on the positions to tp)

### Wands
`/trigger pigedit.wands`: Give tou the two selctor item
* Right Click to set the first or the second position
* Drop to display the selection

## Build
`/trigger pigedit.fill`: Fill the selected area with your selected item (item in your hand)
`/trigger pigedit.clear`: Clear all the blocks in the selection

`/trigger pigedit.circle set <radius>`: Create a circle centered on your position with the input radius with your selected item (item in your hand)
`/trigger pigedit.circle.clear set <radius>`: Clear of hte blocks in a circle area centered on your position with the input radius

## Clipboard
`/trigger pigedit.copy`: Copy the selected area in the Clipboard n°1
`/trigger pigedit.paste`: Paste the content of the Clipboard n°1 at your position

 **→** Your relative position between you and the copied structure is the same whaen you copy and when you paste (like WorldEdit)

 ⚠️ The Clipboards are shared beetween all the players

But you have 9 Clipboards for you, for exemple to use the 7ᵗʰ Clipboard you can use the following commands :
`/trigger pigedit.copy set 7`: Copy the selected area in the Clipboard n°7
`/trigger pigedit.paste set 7`: Paste the content of the Clipboard n°7 at your position