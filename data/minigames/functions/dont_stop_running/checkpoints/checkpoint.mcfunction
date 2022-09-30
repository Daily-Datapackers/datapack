particle minecraft:end_rod ~ ~ ~ 0.5 15 0.5 0.01 3 force
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate[ power= 1 ] as @a[distance=..1,tag=!activated] at @s run spawnpoint @s ~ ~ ~ ~
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate[ power= 1 ] as @a[distance=..1,tag=!activated] run title @s actionbar {"text":"-!- Checkpoint Set -!-","color":"gold"}
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate[ power= 1 ] as @a[distance=..1,tag=!activated] at @s run playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate[ power= 1 ] as @a[tag=!activated] run particle minecraft:totem_of_undying ~ ~ ~ 0.3 1 0.3 0.3 30 force
execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run setblock ~ ~-1 ~ air
execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run kill @s
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate[ power= 1 ] as @a[distance=..1,tag=!activated] run tag @s add activated
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate[ power= 1 ] as @a[distance=1..,tag=activated] run tag @s remove activated