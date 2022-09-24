
scoreboard players operation @s minigames.timer2 = %val settings

execute if score @s minigames.timer2 matches 1.. run scoreboard players set @s minigames.timer1 1
execute unless score @s minigames.timer2 matches 1.. run scoreboard players reset @s minigames.timer1

execute if score @s minigames.timer2 matches 0 run particle dust 1 0 0 1 ~ ~1.2 ~ .3 0 .3 1 30
execute if score @s minigames.timer2 matches 1.. run particle dust 0 1 0 1 ~ ~1.2 ~ .3 0 .3 1 30

