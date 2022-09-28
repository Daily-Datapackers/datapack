
execute as @e[type=marker,tag=parkour] at @s if block ~ ~ ~ air run schedule clear tools:parkour/block_selector/selection_particles
execute as @e[type=marker,tag=parkour] at @s if block ~ ~ ~ air run kill
