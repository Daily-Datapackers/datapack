
scoreboard players operation @s minigames.timer4 = %val settings

execute unless score @s minigames.timer4 matches 1.. run scoreboard players set @s minigames.timer3 0
execute if score @s minigames.timer3 > @s minigames.timer4 run scoreboard players operation @s minigames.timer3 = @s minigames.timer4

execute if score @s minigames.timer4 matches 0 run particle dust 1 0 0 1 ~ ~1.2 ~ .3 0 .3 1 30

execute if score @s minigames.timer4 matches 1.. run particle dust 0 1 0 1 ~ ~1.2 ~ .3 0 .3 1 30

