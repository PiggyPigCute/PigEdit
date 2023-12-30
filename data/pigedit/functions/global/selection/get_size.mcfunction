
scoreboard players operation .dx pigedit.data = @s pigedit.data.pos1x
scoreboard players operation .dx pigedit.data -= @s pigedit.data.pos2x
execute if score .dx pigedit.data matches ..-1 run scoreboard players operation .dx pigedit.data *= .-1 pigedit.const
scoreboard players add .dx pigedit.data 1

scoreboard players operation .dy pigedit.data = @s pigedit.data.pos1y
scoreboard players operation .dy pigedit.data -= @s pigedit.data.pos2y
execute if score .dy pigedit.data matches ..-1 run scoreboard players operation .dy pigedit.data *= .-1 pigedit.const
scoreboard players add .dy pigedit.data 1

scoreboard players operation .dz pigedit.data = @s pigedit.data.pos1z
scoreboard players operation .dz pigedit.data -= @s pigedit.data.pos2z
execute if score .dz pigedit.data matches ..-1 run scoreboard players operation .dz pigedit.data *= .-1 pigedit.const
scoreboard players add .dz pigedit.data 1

scoreboard players operation .size pigedit.data = .dx pigedit.data
scoreboard players operation .size pigedit.data *= .dy pigedit.data
scoreboard players operation .size pigedit.data *= .dz pigedit.data