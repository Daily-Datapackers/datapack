
scoreboard players operation temp temp = @e[type=marker,tag=parkour,tag=!trigger_block,tag=!no_select,distance=..3,limit=1,sort=nearest] parkour.block_id
execute at @e[type=marker,tag=parkour,tag=!trigger_block,tag=!no_select,distance=..3,limit=1,sort=nearest] run particle reverse_portal ~ ~1.2 ~ 0 0 0 1 50

execute as @e[type=marker,tag=parkour,tag=trigger_block,tag=selected] run scoreboard players operation @s parkour.block_id = temp temp
execute at @e[type=marker,tag=parkour,tag=trigger_block,tag=selected] run particle portal ~ ~.5 ~ 0 0 0 1 50
