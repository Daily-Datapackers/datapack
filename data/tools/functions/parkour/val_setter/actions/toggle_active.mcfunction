
scoreboard players add @s parkour.active 1

execute if score @s parkour.active matches 2 run scoreboard players set @s parkour.active 0

execute if score @s parkour.active matches 0 run particle dust 1 0 0 1 ~ ~1.2 ~ .3 0 .3 1 30
execute if score @s parkour.active matches 1 run particle dust 0 1 0 1 ~ ~1.2 ~ .3 0 .3 1 30

