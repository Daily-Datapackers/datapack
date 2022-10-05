
advancement revoke @s only minigames:parkour_block_trigger/death_block_trigger

execute as @e[type=marker,tag=parkour,tag=death_block] if score @s parkour.active matches 1 at @s align xyz positioned ~ ~1 ~ if entity @p[dx=0] run kill @a[dx=0] 
