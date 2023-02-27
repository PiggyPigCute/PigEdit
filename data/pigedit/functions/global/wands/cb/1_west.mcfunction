
# at: head


setblock ~ ~ ~ air
summon marker ~1 ~ ~ {Tags:["wands.set"]}
execute as @e[type=marker,tag=wands.set,limit=1] at @s run function pigedit:global/wands/set_1