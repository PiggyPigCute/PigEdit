
scoreboard players operation .d pigedit.data = .dx pigedit.data
scoreboard players remove .d pigedit.data 1
scoreboard players set .dx pigedit.data 1
function pigedit:cmd/fill/hard/
scoreboard players operation .minx pigedit.data += .d pigedit.data
function pigedit:cmd/fill/hard/
scoreboard players operation .dx pigedit.data = .d pigedit.data
scoreboard players remove .dx pigedit.data 1
scoreboard players operation .minx pigedit.data -= .dx pigedit.data
scoreboard players operation .d pigedit.data = .dy pigedit.data
scoreboard players remove .d pigedit.data 1
scoreboard players set .dy pigedit.data 1
function pigedit:cmd/fill/hard/
scoreboard players operation .miny pigedit.data += .d pigedit.data
function pigedit:cmd/fill/hard/
scoreboard players operation .dy pigedit.data = .d pigedit.data
scoreboard players remove .dy pigedit.data 1
scoreboard players operation .miny pigedit.data -= .dy pigedit.data
scoreboard players operation .d pigedit.data = .dz pigedit.data
scoreboard players remove .d pigedit.data 1
scoreboard players set .dz pigedit.data 1
function pigedit:cmd/fill/hard/
scoreboard players operation .minz pigedit.data += .d pigedit.data
function pigedit:cmd/fill/hard/


