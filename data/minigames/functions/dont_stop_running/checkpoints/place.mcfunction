
## This function triggers when you click with the checkpoint spawn egg

#Places blocks
setblock ~ ~ ~ minecraft:light_weighted_pressure_plate
setblock ~ ~-1 ~ minecraft:beacon

# Add/remove itself tags
tag @s add checkpoint
tag @s remove spawn_checkpoint
