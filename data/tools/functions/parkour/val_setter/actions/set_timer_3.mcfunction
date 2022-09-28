
scoreboard players operation @s minigames.timer3 = %val settings

execute if score @s minigames.timer4 matches 1.. if score @s minigames.timer3 > @s minigames.timer4 run scoreboard players operation @s minigames.timer3 = @s minigames.timer4

