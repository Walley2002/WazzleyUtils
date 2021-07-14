scoreboard players enable @a wu_setBase
scoreboard players enable @a wu_getBases
scoreboard players enable @a wu_removeBase
scoreboard players enable @a wu_coords

execute as @a[scores={wu_setBase=1..}] at @s run function wazzley_utils:set_base_coords
execute as @a[scores={wu_getBases=1..}] at @s run function wazzley_utils:get_base_coords
execute as @a[scores={wu_removeBase=1..}] at @s run function wazzley_utils:remove_base_coords
execute as @a[scores={wu_coords=1..}] at @s run function wazzley_utils:broadcast_coords