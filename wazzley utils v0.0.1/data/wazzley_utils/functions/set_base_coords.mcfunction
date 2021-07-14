scoreboard players set @s wu_setBase 0

function wazzley_utils:remove_base_coords

summon armor_stand ~ ~500 ~ {Invisible:1b,Invulnerable:1b,PersistenceRequired:1b,NoGravity:1b,ShowArms:1b,Small:1b,HandItems:[{id:"minecraft:stick",Count:1b, tag:{Counted:false, New:true}},{}]}

loot replace entity @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{New:true}}]},limit=1] armor.head loot wazzley_utils:get_player_head

execute store result score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{New:true}}]},limit=1] BaseX run data get entity @s Pos[0] 1
execute store result score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{New:true}}]},limit=1] BaseY run data get entity @s Pos[1] 1
execute store result score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{New:true}}]},limit=1] BaseZ run data get entity @s Pos[2] 1

execute store result score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{New:true}}]},limit=1] baseUUID1 run data get entity @s UUID[0]
execute store result score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{New:true}}]},limit=1] baseUUID2 run data get entity @s UUID[1]
execute store result score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{New:true}}]},limit=1] baseUUID3 run data get entity @s UUID[2]
execute store result score @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{New:true}}]},limit=1] baseUUID4 run data get entity @s UUID[3]

data modify entity @e[type=minecraft:armor_stand,nbt={HandItems:[{tag:{New:true}}]},limit=1] HandItems[0].tag.New set value false

scoreboard players add #targetCount recursion 1

execute store result score @s baseUUID1 run data get entity @s UUID[0]
execute store result score @s baseUUID2 run data get entity @s UUID[1]
execute store result score @s baseUUID3 run data get entity @s UUID[2]
execute store result score @s baseUUID4 run data get entity @s UUID[3]

tellraw @s ["",{"text":"Base marker created!","color":"green"}]