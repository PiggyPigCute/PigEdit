# INFO ------------------------------------------------------------------------
# Copyright © 2023 Gunivers Community.

# CODE ------------------------------------------------------------------------

kill B5-0-0-0-1
forceload remove 0 0

scoreboard objectives remove bs.in
scoreboard objectives remove bs.data
scoreboard objectives remove bs.const

data remove storage bs:in raycast
data remove storage bs:out raycast
