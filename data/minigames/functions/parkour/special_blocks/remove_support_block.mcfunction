
execute as @e[type=marker,tag=parkour,tag=support_block,tag=!light_block] at @s run fill ~ ~-1 ~ ~ ~-1 ~ air replace glass_pane
execute as @e[type=marker,tag=parkour,tag=support_block,tag=light_block] at @s run fill ~ ~-1 ~ ~ ~-1 ~ air replace light[level=0]
execute as @e[type=marker,tag=parkour,tag=support_block,tag=light_block] run tag @s remove light_block
execute as @e[type=marker,tag=parkour,tag=support_block] run tag @s remove support_block
