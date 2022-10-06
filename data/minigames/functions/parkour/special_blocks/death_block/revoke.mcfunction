
advancement revoke @s only minigames:parkour_block_placing/place_special_block

execute as @e[type=marker,tag=parkour,tag=death_block,tag=new] at @s run function minigames:parkour/special_blocks/death_block/place_death_block
