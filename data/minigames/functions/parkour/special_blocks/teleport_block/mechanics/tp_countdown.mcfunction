
execute as @a[tag=teleport_scheduled] run scoreboard players remove @s minigames.timer1 1

execute unless score @p[tag=teleport_scheduled] minigames.timer1 matches 1.. as @e[type=marker,tag=parkour,tag=teleport_block] if score @s parkour.active matches 1 if score @s parkour.toggle matches 0 at @s positioned ~ ~1 ~ align xyz run function minigames:parkour/special_blocks/teleport_block/mechanics/teleport_init

execute as @p[tag=teleport_scheduled] run schedule function minigames:parkour/special_blocks/teleport_block/mechanics/tp_countdown 1t
