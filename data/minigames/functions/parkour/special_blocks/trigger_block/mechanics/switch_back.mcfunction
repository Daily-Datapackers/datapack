
# Toggles the linked block
scoreboard players operation temp temp = @s parkour.block_id
execute as @e[type=marker,tag=parkour,tag=!trigger_block,tag=!no_select] if score @s parkour.block_id = temp temp run function minigames:parkour/special_blocks/toggle
