
# Sets timer 3 of a block to the %val score
scoreboard players operation @s minigames.timer3 = %val settings

# Cheks iwhen timer4 is not 0, if timer 3 is higher than timer 4. If yes it set it equal to timer 4 
execute if score @s minigames.timer4 matches 1.. if score @s minigames.timer3 > @s minigames.timer4 run scoreboard players operation @s minigames.timer3 = @s minigames.timer4

