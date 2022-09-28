
scoreboard players operation @s minigames.timer1 = %val settings

execute if score @s minigames.timer1 > @s minigames.timer2 run scoreboard players operation @s minigames.timer1 = @s minigames.timer2

execute store result entity @s data.TimerStart int 1 run scoreboard players get @s minigames.timer1


