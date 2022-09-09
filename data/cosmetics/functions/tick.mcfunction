# ⚠️ DON'T MODIFY UNMARKED PARTS OF THIS FILE OR YOU MIGHT BREAK STUFF ⚠️ 
# Runs the link function
execute as @e[type=area_effect_cloud,tag=c.cosmeticentity] run function cosmetics:link

# Runs the main function of the equiped particles cosmetic
execute as @a[scores={c.equipped_cosmetic=1..10000}] at @s run function cosmetics:particle_cosmetics

# Runs the main function of the cosmetic as and at the cosmetic armorstand 
# ⚠️ Copy this and replace <c.blaze_rods> with the tag of your cosmetic and the function at the end with your function  ⚠️
execute as @e[type=armor_stand,tag=c.cosmeticarmorstand,scores={c.equipped_cosmetic=10001}] at @s run function cosmetics:blaze_rods/main

## ⚠️ Put your uses of c.cosmetics here  ⚠️ 

# Adds score to %rotations c.cosmetics score
execute if score %rotation c.cosmetics matches ..360 run scoreboard players add %rotation c.cosmetics 10

# Resets %rotations c.cosmetics score
execute if score %rotation c.cosmetics matches 360.. run scoreboard players set %rotation c.cosmetics 1

# Rotates rotator
execute as @e[type=marker, tag=c.rotate] at @s run tp @s ~ ~ ~ ~10 ~

# Purely for testing -HoodieRocks
