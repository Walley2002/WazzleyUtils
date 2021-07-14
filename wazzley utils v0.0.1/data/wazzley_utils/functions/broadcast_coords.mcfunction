scoreboard players set @s wu_coords 0

scoreboard objectives add coordsX dummy
scoreboard objectives add coordsY dummy
scoreboard objectives add coordsZ dummy

execute store result score @s coordsX run data get entity @s Pos[0] 1
execute store result score @s coordsY run data get entity @s Pos[1] 1
execute store result score @s coordsZ run data get entity @s Pos[2] 1

tellraw @a ["",{"selector":"@s","color":"white"},{"text":" is at: "},{"text":"   X: ","color":"yellow"},{"score":{"name":"@s","objective":"coordsX"},"color":"green"},{"text":"   Y: ","color":"yellow"},{"score":{"name":"@s","objective":"coordsY"},"color":"green"},{"text":"   Z: ","color":"yellow"},{"score":{"name":"@s","objective":"coordsZ"},"color":"green"}]

scoreboard objectives remove coordsX
scoreboard objectives remove coordsY
scoreboard objectives remove coordsZ