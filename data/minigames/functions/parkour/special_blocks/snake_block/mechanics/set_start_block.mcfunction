
# Places a block at its location and unmarks it
execute as @e[type=marker,tag=parkour,tag=snake_block,tag=need_block] at @s run function minigames:parkour/special_blocks/place_block
execute as @e[type=marker,tag=parkour,tag=snake_block,tag=need_block] run tag @s remove need_block
