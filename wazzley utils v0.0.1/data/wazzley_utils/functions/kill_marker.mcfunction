scoreboard players remove #targetCount recursion 1

kill @s

execute as @p[scores={wu_removeBase=-1}] run tellraw @s ["",{"text":"Base marker deleted!","color":"red"}]

execute as @p[scores={wu_removeBase=-1}] run scoreboard players set @s wu_removeBase 0