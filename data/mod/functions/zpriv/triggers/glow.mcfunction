execute if predicate mod:is_glowing run scoreboard players set @s mod.glowcheck 1
execute unless predicate mod:is_glowing run scoreboard players set @s mod.glowcheck 0

execute if score @s mod.glowcheck matches 1 run tellraw @a[tag=mod.cmd.ban] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"yellow"},{"text":" is no longer glowing]","italic":true,"color":"gray"}]
execute if score @s mod.glowcheck matches 0 run tellraw @a[tag=mod.cmd.ban] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"yellow"},{"text":" is now glowing]","italic":true,"color":"gray"}]

execute if score @s mod.glowcheck matches 1 run effect clear @s glowing
execute if score @s mod.glowcheck matches 0 run effect give @s glowing 999999 1 true