
scoreboard players operation temp temp = @s parkour.block_id
execute as @e[type=marker,tag=parkour,tag=!trigger_block,tag=!no_select] if score @s parkour.block_id = temp temp run scoreboard players set @s parkour.toggle 0
