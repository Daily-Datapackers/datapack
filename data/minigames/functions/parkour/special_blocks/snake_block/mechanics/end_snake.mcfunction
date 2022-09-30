
tag @s remove this
scoreboard players set @s parkour.toggle 0

execute store result score temp temp run data get entity @s data.Home[0] 10
execute store result entity @s Pos[0] double 0.1 run scoreboard players get temp temp

execute store result score temp temp run data get entity @s data.Home[1] 10
execute store result entity @s Pos[1] double 0.1 run scoreboard players get temp temp

execute store result score temp temp run data get entity @s data.Home[2] 10
execute store result entity @s Pos[2] double 0.1 run scoreboard players get temp temp

execute store result score @s minigames.timer1 run data get entity @s data.TimerStart

tag @s add need_block

schedule function minigames:parkour/special_blocks/snake_block/mechanics/set_start_block 1t append