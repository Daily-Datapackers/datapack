
execute as @e[type=marker,tag=parkour,tag=selected] run function minigames:parkour/building_tools/block_selector/deselect

tag @s add selected
