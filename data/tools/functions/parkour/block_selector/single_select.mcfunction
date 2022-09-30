
execute as @e[type=marker,tag=parkour,tag=selected] run function tools:parkour/block_selector/deselect

tag @s add selected
