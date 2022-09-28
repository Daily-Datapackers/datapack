
advancement revoke @s only minigames:parkour_block_placing/trigger_block

execute as @e[type=marker,tag=parkour,tag=trigger_block,tag=new] at @s run function minigames:parkour/special_blocks/trigger_block/place_trigger_block
