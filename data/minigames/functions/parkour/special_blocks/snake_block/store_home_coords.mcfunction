
tag @s add home_coords_set

execute store result score temp temp run data get entity @s Pos[0] 10
execute store result entity @s data.Home[0] double 0.1 run scoreboard players get temp temp

execute store result score temp temp run data get entity @s Pos[1] 10
execute store result entity @s data.Home[1] double 0.1 run scoreboard players get temp temp

execute store result score temp temp run data get entity @s Pos[2] 10
execute store result entity @s data.Home[2] double 0.1 run scoreboard players get temp temp

execute unless score @s minigames.timer3 matches 1.. run scoreboard players set @s minigames.timer3 1
