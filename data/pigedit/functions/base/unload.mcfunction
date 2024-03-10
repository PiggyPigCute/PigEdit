

# Scores
scoreboard objectives remove pigedit.data
scoreboard objectives remove pigedit.data.pos1x
scoreboard objectives remove pigedit.data.pos1y
scoreboard objectives remove pigedit.data.pos1z
scoreboard objectives remove pigedit.data.pos2x
scoreboard objectives remove pigedit.data.pos2y
scoreboard objectives remove pigedit.data.pos2z
scoreboard objectives remove pigedit.data.clipx
scoreboard objectives remove pigedit.data.clipy
scoreboard objectives remove pigedit.data.clipz
scoreboard objectives remove pigedit.data.tool
scoreboard objectives remove pigedit.settings

# Storage
data remove storage pigedit:data data

# Bookshelf Libs
function bs.hitbox:__unload__
function bs.raycast:__unload__

# Frame entities
kill @e[type=text_display,tag=pigedit.selection_frame.text_display]

# DataPack disable
datapack disable "file/PigEdit"
datapack disable "file/PigEdit.zip"

