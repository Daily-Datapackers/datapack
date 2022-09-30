
# Removes all parts of the nearest machine
execute at @e[type=armor_stand,tag=whack_a_frog,limit=1,sort=nearest] run fill ~-1 ~ ~-1 ~1 ~ ~1 air
execute at @e[type=armor_stand,tag=whack_a_frog,limit=1,sort=nearest] as @e[tag=whack_a_frog,distance=..2] run kill
