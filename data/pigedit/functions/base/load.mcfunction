

say Youpi

schedule function pigedit:base/sched_1s 1s replace


scoreboard objectives add pigedit.data dummy
scoreboard objectives add pigedit.data.pos1x dummy
scoreboard objectives add pigedit.data.pos1y dummy
scoreboard objectives add pigedit.data.pos1z dummy
scoreboard objectives add pigedit.data.pos2x dummy
scoreboard objectives add pigedit.data.pos2y dummy
scoreboard objectives add pigedit.data.pos2z dummy
scoreboard objectives add pigedit.data dummy

scoreboard objectives add pigedit.const dummy
scoreboard players set -1 pigedit.const -1
scoreboard players set 2 pigedit.const 2
scoreboard players set 16 pigedit.const 16

scoreboard objectives add pigedit. trigger
scoreboard players enable @a pigedit.
scoreboard objectives add pigedit.circle trigger
scoreboard players enable @a pigedit.circle
scoreboard objectives add pigedit.circle.clear trigger
scoreboard players enable @a pigedit.circle.clear
scoreboard objectives add pigedit.clear trigger
scoreboard players enable @a pigedit.clear
scoreboard objectives add pigedit.copy trigger
scoreboard players enable @a pigedit.copy
scoreboard objectives add pigedit.fill trigger
scoreboard players enable @a pigedit.fill
scoreboard objectives add pigedit.paste trigger
scoreboard players enable @a pigedit.paste
scoreboard objectives add pigedit.pos1 trigger
scoreboard players enable @a pigedit.pos1
scoreboard objectives add pigedit.pos2 trigger
scoreboard players enable @a pigedit.pos2
scoreboard objectives add pigedit.pos1.get trigger
scoreboard players enable @a pigedit.pos1.get
scoreboard objectives add pigedit.pos2.get trigger
scoreboard players enable @a pigedit.pos2.get
scoreboard objectives add pigedit.selection trigger
scoreboard players enable @a pigedit.selection
scoreboard objectives add pigedit.up trigger
scoreboard players enable @a pigedit.up
scoreboard objectives add pigedit.wands trigger
scoreboard players enable @a pigedit.wands





#define objective pigedit.data
#define objective pigedit.const
#define storage pigedit:data

