
# Marks it that it has saved its home position
tag @s add home_coords_set

# Saves the x pos
execute store result score temp temp run data get entity @s Pos[0] 10
execute store result entity @s data.Home[0] double 0.1 run scoreboard players get temp temp

# Saves the y pso
execute store result score temp temp run data get entity @s Pos[1] 10
execute store result entity @s data.Home[1] double 0.1 run scoreboard players get temp temp

# Saves the z pos
execute store result score temp temp run data get entity @s Pos[2] 10
execute store result entity @s data.Home[2] double 0.1 run scoreboard players get temp temp

