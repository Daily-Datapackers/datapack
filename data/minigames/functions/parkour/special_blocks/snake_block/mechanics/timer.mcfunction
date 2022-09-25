
scoreboard players set @s minigames.timer1 1
scoreboard players add @s parkour.toggle 1
execute if score @s parkour.toggle matches 2 run scoreboard players set @s parkour.toggle 0
