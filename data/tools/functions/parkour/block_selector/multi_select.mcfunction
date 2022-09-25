
execute as @e[type=marker,tag=parkour,tag=selected,tag=!multi] run function tools:parkour/block_selector/deselect

tag @s add multi
tag @s add selected

