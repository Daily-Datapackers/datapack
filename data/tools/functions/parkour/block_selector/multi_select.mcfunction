
# Deselects all single selected blocks
execute as @e[type=marker,tag=parkour,tag=selected,tag=!multi] run function tools:parkour/block_selector/deselect

# Marks the block as multi selected
tag @s add multi
tag @s add selected

