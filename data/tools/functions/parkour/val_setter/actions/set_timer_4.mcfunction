
# Sets timer 4 of a block to the %val score
scoreboard players operation @s minigames.timer4 = %val settings

# It shows with particles if the timer is active(1..) or not
execute if score @s minigames.timer4 matches 0 run particle dust 1 0 0 1 ~ ~1.2 ~ .3 0 .3 1 30
execute if score @s minigames.timer4 matches 1.. run particle dust 0 1 0 1 ~ ~1.2 ~ .3 0 .3 1 30

