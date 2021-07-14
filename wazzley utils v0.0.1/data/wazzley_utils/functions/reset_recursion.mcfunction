execute unless score #count recursion matches 0 run data modify entity @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{Counted:true, New:false}}]},limit=1] HandItems[0].tag.Counted set value false

execute unless score #count recursion matches 0 run scoreboard players remove #count recursion 1

execute unless score #count recursion matches 0 run function wazzley_utils:reset_recursion