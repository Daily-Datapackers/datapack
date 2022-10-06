
# Checks if sneaking or not and executes single or multi selection 
execute unless predicate main:is_sneaking as @e[type=marker,tag=parkour,tag=!selected,tag=!multi,tag=!no_select,distance=..3,sort=nearest] run function tools:parkour/block_selector/multi_select
execute if predicate main:is_sneaking as @e[type=marker,tag=parkour,tag=!no_select,distance=..3,limit=1,sort=nearest] run function tools:parkour/block_selector/single_select

# If no blocks are in reach all get deselected
execute unless entity @e[type=marker,tag=parkour,distance=..3] run function tools:parkour/block_selector/deselect

# Activates the selection particles
function tools:parkour/block_selector/selection_particles
