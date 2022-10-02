
# Sets timer 4 of a block to the %val score
scoreboard players operation @s minigames.timer4 = %val settings

# Cheks iwhen timer4 is not 0, if timer 3 is higher than timer 4. If yes it set it equal to timer 4 
execute if score @s minigames.timer4 matches 1.. if score @s minigames.timer3 > @s minigames.timer4 run scoreboard players operation @s minigames.timer3 = @s minigames.timer4

# It shows with particles if the timer is active(1..) or not
execute if score @s minigames.timer4 matches 0 run particle dust 1 0 0 1 ~ ~1.2 ~ .3 0 .3 1 30
execute if score @s minigames.timer4 matches 1.. run particle dust 0 1 0 1 ~ ~1.2 ~ .3 0 .3 1 30

