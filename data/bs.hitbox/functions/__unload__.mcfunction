# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

kill B5-0-0-0-1
forceload remove 0 0

scoreboard objectives remove bs.out
scoreboard objectives remove bs.data
scoreboard objectives remove bs.const

data remove storage bs:out hitbox
data remove storage bs:data hitbox
