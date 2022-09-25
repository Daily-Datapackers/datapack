
scoreboard players add @s parkour.active 1

execute if score @s parkour.active matches 2 run scoreboard players set @s parkour.active 0

execute if score @s parkour.active matches 0 run particle dust 1 0 0 1 ~ ~1.2 ~ .3 0 .3 1 30

execute if score @s parkour.active matches 1 run particle dust 0 1 0 1 ~ ~1.2 ~ .3 0 .3 1 30
execute if score @s parkour.active matches 1 store result score @s minigames.timer1 run data get entity @s data.TimerStart
execute if score @s parkour.active matches 1 store result score @s minigames.timer2 run data get entity @s data.TimerDuration
execute if entity @s[tag=parkour,tag=snake_block] if score @s parkour.active matches 1 run function minigames:parkour/special_blocks/snake_block/store_home_coords


