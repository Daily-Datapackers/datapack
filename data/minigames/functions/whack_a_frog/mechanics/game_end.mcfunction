
# Removes the in use status of the mashine
tag @s remove whack_a_frog.playing

# Remove playing tag of the player
execute positioned ^ ^ ^2 run tag @p[tag=whack_a_frog.playing] run tag @s remove whack_a_frog.playing

# Remove old frogs
tp @e[type=frog,tag=whack_a_frog,distance=..2] ~ -500 ~

# Get mashine facing direction
function minigames:codelib/get_facing_dir

# Spawn new interactive parts
function minigames:whack_a_frog/machine_parts/interactive
