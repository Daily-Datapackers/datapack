
execute as @e[type=marker,tag=parkour,tag=selected,tag=!multi] run tag @s remove selected

tag @s add multi
tag @s add selected

