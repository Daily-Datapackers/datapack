
# Sets timer 2 of a block to the %val score
scoreboard players operation @s minigames.timer2 = %val settings

# Cheks if the timer duration(timer 2) is higher than 1 and if not it sets the timer start(timer 1) to 0 
execute unless score @s minigames.timer2 matches 1.. run scoreboard players set @s minigames.timer1 0

# If the timer start(timer 1) is higher than the duartion(timer 2) it sets it to the duration
execute if score @s minigames.timer1 > @s minigames.timer2 run scoreboard players operation @s minigames.timer1 = @s minigames.timer2

# Stores the timer start in the nbt of the block
execute store result entity @s data.TimerStart int 1 run scoreboard players get @s minigames.timer1

# It shows with particles if the timer is active(1..) or not
execute if score @s minigames.timer2 matches 0 run particle dust 1 0 0 1 ~ ~1.2 ~ .3 0 .3 1 30
execute if score @s minigames.timer2 matches 1.. run particle dust 0 1 0 1 ~ ~1.2 ~ .3 0 .3 1 30
