
tag @s remove new

# Rotate model to player facing direction
execute store result entity @s Rotation[0] float 1 run scoreboard players get dir temp
tp @s ~ ~ ~

# Place blocks
fill ~-1 ~ ~-1 ~1 ~ ~1 snow[layers=5] replace air

# Spawns interactive parts
function minigames:whack_a_frog/machine_parts/interactive
