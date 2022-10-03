
# Toggles the score between 0 and 1
scoreboard players add @s parkour.active 1
execute if score @s parkour.active matches 2 run scoreboard players set @s parkour.active 0

# Schows with particles if it's active(1) or not(0)
execute if score @s parkour.active matches 0 run particle dust 1 0 0 1 ~ ~1.2 ~ .3 0 .3 1 30
execute if score @s parkour.active matches 1 run particle dust 0 1 0 1 ~ ~1.2 ~ .3 0 .3 1 30

# Sets its timer start to the one saved in its nbt
execute if score @s parkour.active matches 1 store result score @s minigames.timer1 run data get entity @s data.TimerStart

# If a block has the toggle score 1 it sets it back to 0
execute if entity @s[tag=parkour,tag=trigger_block] if score @s parkour.active matches 1 run scoreboard players set @s parkour.toggle 0
execute if entity @s[tag=parkour,tag=teleport_block] if score @s parkour.active matches 1 run scoreboard players set @s parkour.toggle 0

# Saves the home position of a snake block if it isn't already
execute if entity @s[tag=parkour,tag=snake_block,tag=!home_coords_set] if score @s parkour.active matches 1 run function minigames:parkour/special_blocks/snake_block/store_home_coords

# Sets the lenght of a snake block to 1 if not 1 or higher
execute if entity @s[tag=parkour,tag=snake_block] if score @s parkour.active matches 1 unless score @s minigames.timer3 matches 1.. run scoreboard players set @s minigames.timer3 1

