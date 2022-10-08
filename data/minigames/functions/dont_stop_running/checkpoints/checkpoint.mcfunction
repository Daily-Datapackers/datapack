## Triggers when there are checkpoints in the world

# Does end rod beam particles
particle minecraft:end_rod ~ ~ ~ 0.5 15 0.5 0.01 3 force

# When the pressureplate activated, gives you spawnpoint
execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate[power=0] as @a[distance=..1,tag=!activated] at @s run function minigames:dont_stop_running/checkpoints/spawnpoint

# If pressureplate broken, then it deleted the checkpoint
execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate run function minigames:dont_stop_running/checkpoints/delete

# Remove activated role - (doesn't give you spawnpoints every tick)
execute as @a[distance=1..1.5,tag=activated] at @s run tag @s remove activated
#execute unless block ~ ~ ~ minecraft:light_weighted_pressure_plate[power=0] if entity @a[distance=..1,tag=!activated] run tag @s add activated
