

say Youpi



scoreboard objectives add pigedit.data dummy
scoreboard objectives add pigedit.data.pos1x dummy
scoreboard objectives add pigedit.data.pos1y dummy
scoreboard objectives add pigedit.data.pos1z dummy
scoreboard objectives add pigedit.data.pos2x dummy
scoreboard objectives add pigedit.data.pos2y dummy
scoreboard objectives add pigedit.data.pos2z dummy
scoreboard objectives add pigedit.data.clipx dummy
scoreboard objectives add pigedit.data.clipy dummy
scoreboard objectives add pigedit.data.clipz dummy
scoreboard objectives add pigedit.data.tool minecraft.used:warped_fungus_on_a_stick
scoreboard objectives add pigedit.settings dummy

scoreboard players set .mask_number pigedit.data 0
execute store result score .mask_number pigedit.data run data get storage pigedit:data data.mask
execute unless score .selection_frame pigedit.settings matches 0.. run scoreboard players set .selection_frame pigedit.settings 1
execute unless score .max_frame_size pigedit.settings matches 0.. run scoreboard players set .max_frame_size pigedit.settings 1000000
execute unless score .see_through pigedit.settings matches 0..1 run scoreboard players set .see_through pigedit.settings 0
scoreboard players set #-1 pigedit.data -1
scoreboard players set #-4 pigedit.data -4
scoreboard players set #2 pigedit.data 2
scoreboard players set #8 pigedit.data 8
scoreboard players set #40 pigedit.data 40

data remove storage pigedit:data data.var
data modify storage pigedit:data data.register.tool set value {id:"minecraft:warped_fungus_on_a_stick",tag:{pigedit:{tool:1b},CustomModelData:629000,Enchantments:[{}],display:{Name:'{"text":"PigEdit Tool","italic":false}'}}}

schedule function pigedit:base/schedule_4t 4t replace