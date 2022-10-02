
# Deselect all other blocks
execute as @e[type=marker,tag=parkour,tag=selected] run function tools:parkour/block_selector/deselect

# Marks this block as selected
tag @s add selected
