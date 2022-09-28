
tag @s add in_trigger_block

execute as @e[type=marker,tag=parkour,tag=trigger_block] if score @s parkour.active matches 1 if score @s parkour.toggle matches 0 at @s align xyz if entity @p[dx=0] run function minigames:parkour/special_blocks/trigger_block/mechanics/trigger

function minigames:parkour/special_blocks/trigger_block/revoke_trigger_check
