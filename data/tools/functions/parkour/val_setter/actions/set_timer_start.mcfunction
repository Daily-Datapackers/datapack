
scoreboard players operation @s minigames.timer1 = %val settings

execute unless score @s minigames.timer1 matches 1.. run scoreboard players set @s minigames.timer2 0
execute unless score @s minigames.timer1 matches 1.. run scoreboard players reset @s minigames.timer1

execute store result entity @s data.TimerStart int 1 run scoreboard players get @s minigames.timer1
execute store result entity @s data.TimerDuration int 1 run scoreboard players get @s minigames.timer2

