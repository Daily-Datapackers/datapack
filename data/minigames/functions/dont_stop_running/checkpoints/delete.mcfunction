
## Triggers when there are checkpoints in the world

# Does end rod beam particles
particle minecraft:end_rod ~ ~ ~ 0.5 15 0.5 0.01 3 force

# Gives you spawnpoint
spawnpoint @s ~ ~ ~
title @s actionbar {"text":"-!- Checkpoint Set -!-","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
particle minecraft:totem_of_undying ~ ~ ~ 0.3 1 0.3 0.3 30 force

# If pressureplate broken, then it deleted the checkpoint
setblock ~ ~-1 ~ air
kill @s

# Add activated role, so it doesn't give you spawnpoints infinitly
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate[ power= 1 ] as @a[distance=..1,tag=!activated] run tag @s add activated
execute if block ~ ~ ~ minecraft:light_weighted_pressure_plate[ power= 1 ] as @a[distance=1..,tag=activated] run tag @s remove activated
