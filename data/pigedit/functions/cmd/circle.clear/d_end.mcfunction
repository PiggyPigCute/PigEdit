
# as-at: maker

kill @s

tellraw @a[tag=pigedit.player] ["",{"text":"Circle (","italic":true,"color":"gray"},{"score":{"name":"arg","objective":"pigedit.data"},"italic":true,"color":"gray"},{"text":"m radius) succefully cleared","italic":true,"color":"gray"}]
scoreboard players enable @a[tag=pigedit.player] pigedit.circle.clear
tag @s remove pigedit.player