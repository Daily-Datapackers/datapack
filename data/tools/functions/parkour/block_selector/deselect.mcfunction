
# Removes selection tags
execute as @e[type=marker,tag=parkour,tag=selected] run tag @s remove multi
execute as @e[type=marker,tag=parkour,tag=selected] run tag @s remove selected

# Disables the selection particles
schedule clear tools:parkour/block_selector/selection_particles
