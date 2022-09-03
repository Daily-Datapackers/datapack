# Replaces the head item
execute if entity @s[tag=!custom_model] run function cosmetics:blaze_rods/add_custom_model
# Displays particles
particle flame ~ ~0.5 ~ 0.5 0.4 0.5 0 1 normal
particle smoke ~ ~0.5 ~ 0.5 0.5 0.5 0 1 normal 
particle dust 0.141 0.141 0.141 2 ~ ~0.5 ~ 0.3 0.3 0.3 1 1 normal @a[distance=0.51..]
particle dust 0.184 0.18 0.18 1 ~ ~0.5 ~ 0.3 0.3 0.3 1 1 normal @a[distance=0.51..]
# Sets the heads rotation to the score of %rotation in c.cosmetics
execute store result entity @s Pose.Head[1] float 1 run scoreboard players get %rotation c.cosmetics
