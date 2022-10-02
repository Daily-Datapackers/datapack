
# Resets both timer
execute if score @s minigames.timer2 matches 1.. run scoreboard players set @s minigames.timer1 0
execute if score @s minigames.timer4 matches 1.. run scoreboard players operation @s minigames.timer3 = @s minigames.timer4

# Deactivates this block
scoreboard players set @s parkour.toggle 1

# Toggles the linked block
scoreboard players operation temp temp = @s parkour.block_id
execute as @e[type=marker,tag=parkour,tag=!trigger_block,tag=!no_select] if score @s parkour.block_id = temp temp run function minigames:parkour/special_blocks/toggle
