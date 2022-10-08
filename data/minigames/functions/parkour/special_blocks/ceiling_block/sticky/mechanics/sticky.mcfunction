
advancement revoke @s only minigames:parkour_block_trigger/sticky_to_ceiling_trigger

execute as @e[type=marker,tag=parkour,tag=ceiling_block_sticky] if score @s parkour.active matches 1 at @s align xyz as @a[dx=0] run function minigames:parkour/special_blocks/ceiling_block/sticky/mechanics/player_exe
