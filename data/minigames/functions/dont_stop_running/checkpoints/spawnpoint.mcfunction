## Triggers when you stand on checkpoint

# Gives you spawnpoint
execute at @e[tag=checkpoint,distance=..1] run spawnpoint @s ~ ~ ~ ~

# Does the cool sounds, effects, texts
title @s actionbar {"text":"-!- Checkpoint Set -!-","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
particle minecraft:totem_of_undying ~ ~ ~ 0.3 1 0.3 0.3 30 force

# Add activated role - (doesn't give you spawnpoints every tick)
tag @s add activated