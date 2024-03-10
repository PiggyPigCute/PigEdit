
# Display
tellraw @a {"text":"[Loaded PigEdit]","italic":false,"color":"green"}

# Dummy Scores
scoreboard objectives add pigedit.data dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Data","color":"gold"}]
scoreboard objectives add pigedit.data.pos1x dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Selection x1","color":"gold"}]
scoreboard objectives add pigedit.data.pos1y dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Selection y1","color":"gold"}]
scoreboard objectives add pigedit.data.pos1z dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Selection z1","color":"gold"}]
scoreboard objectives add pigedit.data.pos2x dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Selection x2","color":"gold"}]
scoreboard objectives add pigedit.data.pos2y dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Selection y2","color":"gold"}]
scoreboard objectives add pigedit.data.pos2z dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Selection z2","color":"gold"}]
scoreboard objectives add pigedit.data.clipx dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Clipboard x","color":"gold"}]
scoreboard objectives add pigedit.data.clipy dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Clipboard y","color":"gold"}]
scoreboard objectives add pigedit.data.clipz dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Clipboard z","color":"gold"}]
scoreboard objectives add pigedit.settings dummy [{"text":"PigEdit ","color":"dark_green"},{"text":"Settings","color":"gold"}]

# Tool score (Warped fungus on a stick)
scoreboard objectives add pigedit.data.tool minecraft.used:warped_fungus_on_a_stick [{"text":"PigEdit ","color":"dark_green"},{"text":"Tool (wfoas)","color":"gold"}]
scoreboard players set @a pigedit.data.tool 0

# Mask number
scoreboard players set .mask_number pigedit.data 0
execute store result score .mask_number pigedit.data run data get storage pigedit:data data.mask

# Default Settings
execute unless score .selection_frame pigedit.settings matches 0.. run scoreboard players set .selection_frame pigedit.settings 1
execute unless score .max_frame_size pigedit.settings matches 0.. run scoreboard players set .max_frame_size pigedit.settings 1000000
execute unless score .see_through pigedit.settings matches 0..1 run scoreboard players set .see_through pigedit.settings 0
execute unless score .tool_reach pigedit.settings matches 0.. run scoreboard players set .tool_reach pigedit.settings 64
execute unless score .brush_reach pigedit.settings matches 0.. run scoreboard players set .brush_reach pigedit.settings 64

# Const
scoreboard players set #-1 pigedit.data -1
scoreboard players set #-4 pigedit.data -4
scoreboard players set #2 pigedit.data 2
scoreboard players set #8 pigedit.data 8
scoreboard players set #40 pigedit.data 40

# Storage
data remove storage pigedit:data data.var
data modify storage pigedit:data data.register.tool set value {id:"minecraft:warped_fungus_on_a_stick",tag:{pigedit:{tool:1b},CustomModelData:629000,Enchantments:[{}],display:{Name:'{"text":"PigEdit Tool","italic":false}'}}}

# Schedule
schedule function pigedit:base/schedule_4t 4t replace