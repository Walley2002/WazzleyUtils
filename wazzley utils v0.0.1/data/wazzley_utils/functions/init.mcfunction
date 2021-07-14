scoreboard objectives add BaseX dummy
scoreboard objectives add BaseY dummy
scoreboard objectives add BaseZ dummy

scoreboard objectives add numCounted dummy
scoreboard objectives add recursion dummy

scoreboard objectives add baseUUID1 dummy
scoreboard objectives add baseUUID2 dummy
scoreboard objectives add baseUUID3 dummy
scoreboard objectives add baseUUID4 dummy

scoreboard objectives add wu_setBase trigger "Set your base coordinates"
scoreboard objectives add wu_getBases trigger "Get everyone's base coordinates"
scoreboard objectives add wu_removeBase trigger "Remove your base marker"
scoreboard objectives add wu_coords trigger "Broadcast your coordinates to other players"

scoreboard players set #count recursion 0