
advancement revoke @s only minigames:parkour_block_placing/place_special_block

execute as @e[type=marker,tag=parkour,tag=ceiling_block_release,tag=new] at @s run function minigames:parkour/special_blocks/ceiling_block/release/place_ceiling_block
