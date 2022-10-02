
# Sets timer 1 of a block to the %val score
scoreboard players operation @s minigames.timer1 = %val settings

# If the timer start(timer 1) is higher than the duartion(timer 2) it sets it to the duration
execute if score @s minigames.timer1 > @s minigames.timer2 run scoreboard players operation @s minigames.timer1 = @s minigames.timer2

# Stores the timer start in the nbt of the block
execute store result entity @s data.TimerStart int 1 run scoreboard players get @s minigames.timer1


