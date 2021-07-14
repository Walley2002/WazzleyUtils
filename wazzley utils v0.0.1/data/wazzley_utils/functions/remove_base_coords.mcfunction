scoreboard players set @s wu_removeBase -1

execute if score #count recursion < #targetCount recursion if score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1] baseUUID1 = @s baseUUID1 if score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1] baseUUID2 = @s baseUUID2 if score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1] baseUUID3 = @s baseUUID3 if score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1] baseUUID4 = @s baseUUID4 as @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1] run function wazzley_utils:kill_marker

execute if score #count recursion < #targetCount recursion run data modify entity @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:false, New:false}}]},limit=1] HandItems[0].tag.Counted set value true

execute if score #count recursion < #targetCount recursion run scoreboard players add #count recursion 1

execute if score #count recursion < #targetCount recursion run function wazzley_utils:remove_base_coords

execute unless score #count recursion < #targetCount recursion run function wazzley_utils:reset_recursion