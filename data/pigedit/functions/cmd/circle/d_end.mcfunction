
# as-at: maker

# scoreboard players operation count pigedit.data = radius pigedit.data
# function pigedit:cmd/circle/c_setblocks

kill @s
fill ~-90 ~ ~-90 ~90 ~ ~90 command_block{auto:true,Command:"function pigedit:cmd/circle/e_replace_barrel"} replace barrel{CustomName:'{"text":"pigedit.circle.barrel"}'}
# schedule function pigedit:cmd/circle/e_air 1s

tellraw @a[tag=pigedit.player] ["",{"text":"Circle (","italic":true,"color":"gray"},{"score":{"name":"arg","objective":"pigedit.data"},"italic":true,"color":"gray"},{"text":"m radius) succefully generated","italic":true,"color":"gray"}]
scoreboard players enable @a[tag=pigedit.player] pigedit.circle
tag @s remove pigedit.player