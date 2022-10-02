
tag @s remove new

# Activates the part block of the snake
scoreboard players set @s parkour.active 1

# Sets the duration timer of the part block to the duration of the main block times the length
scoreboard players operation @s minigames.timer2 = @e[type=marker,tag=parkour,tag=snake_block,tag=this,limit=1,sort=nearest] minigames.timer2
scoreboard players operation @s minigames.timer2 *= @e[type=marker,tag=parkour,tag=snake_block,tag=this,limit=1,sort=nearest] minigames.timer3
