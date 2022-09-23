
execute as @e[type=marker,tag=parkour,tag=support_block] at @s run fill ~ ~-1 ~ ~ ~-1 ~ air replace glass_pane
execute as @e[type=marker,tag=parkour,tag=support_block] run tag @s remove support_block
