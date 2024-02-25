

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
execute unless score .mask_number pigedit.data matches 1.. run scoreboard players set .mask_number pigedit.data 0

scoreboard objectives add pigedit.data dummy
scoreboard players set #-1 pigedit.data -1
scoreboard players set #-4 pigedit.data -4
scoreboard players set #2 pigedit.data 2
scoreboard players set #8 pigedit.data 8
scoreboard players set #40 pigedit.data 40

data modify storage pigedit:data data.register.tool set value {id:"minecraft:warped_fungus_on_a_stick",tag:{pigedit:{tool:1b},CustomModelData:629000,Enchantments:[{}],display:{Name:'{"text":"PigEdit Tool","italic":false}'}}}

schedule function pigedit:base/schedule_4t 4t replace