

function pigedit:global/selection/frame/spaces/macro with storage pigedit:data data.var

# Loop
scoreboard players add .i pigedit.data 1
execute if score .i pigedit.data < .max pigedit.data run function pigedit:global/selection/frame/spaces/loop