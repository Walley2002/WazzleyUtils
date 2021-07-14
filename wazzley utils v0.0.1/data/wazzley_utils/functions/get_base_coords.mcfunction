scoreboard players set @s wu_getBases 0

execute if score #count recursion < #targetCount recursion run tellraw @s ["",{"nbt":"ArmorItems[3].tag.SkullOwner.Name","entity":"@e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1]","color":"white"},{"text":"'s base is at: "},{"text":"   X: ","color":"yellow"},{"score":{"name":"@e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1]","objective":"BaseX"},"color":"green"},{"text":"   Y: ","color":"yellow"},{"score":{"name":"@e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1]","objective":"BaseY"},"color":"green"},{"text":"   Z: ","color":"yellow"},{"score":{"name":"@e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1]","objective":"BaseZ"},"color":"green"}]

execute if score #count recursion < #targetCount recursion run data modify entity @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1] HandItems[0].tag.Counted set value true

execute if score #count recursion < #targetCount recursion run scoreboard players add #count recursion 1

execute if score #count recursion < #targetCount recursion run function wazzley_utils:get_base_coords

execute unless score #count recursion < #targetCount recursion run function wazzley_utils:reset_recursion