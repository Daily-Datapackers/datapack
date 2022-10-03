
# Stores the block id of the nearest block in a temporal storage and makes particles
scoreboard players operation temp temp = @e[type=marker,tag=parkour,tag=!trigger_block,tag=!no_select,distance=..3,limit=1,sort=nearest] parkour.block_id
execute at @e[type=marker,tag=parkour,tag=!trigger_block,tag=!no_select,distance=..3,limit=1,sort=nearest] run particle reverse_portal ~ ~1.2 ~ 0 0 0 1 50

# If the block didn't have a block id it gets one and stores it temporarily
execute if score temp temp matches 0 as @e[type=marker,tag=parkour,tag=!trigger_block,tag=!no_select,distance=..3,limit=1,sort=nearest] run function minigames:parkour/special_blocks/set_block_id

# Saves the block id stored in the temporal storage in all selected the trigger blocks block id and make sparticles
execute as @e[type=marker,tag=parkour,tag=trigger_block,tag=selected] run scoreboard players operation @s parkour.block_id = temp temp
execute at @e[type=marker,tag=parkour,tag=trigger_block,tag=selected] run particle portal ~ ~.5 ~ 0 0 0 1 50

# Saves the block id stored in the temporal storage in the selected teleport blocks block id and make sparticles
execute as @e[type=marker,tag=parkour,tag=teleport_block,tag=selected,tag=!multi] run scoreboard players operation @s parkour.block_id = temp temp
execute at @e[type=marker,tag=parkour,tag=teleport_block,tag=selected,tag=!multi] run particle portal ~ ~1.2 ~ 0 0 0 1 50
