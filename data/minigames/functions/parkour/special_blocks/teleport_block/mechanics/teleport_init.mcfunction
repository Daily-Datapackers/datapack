
scoreboard players operation temp temp = @s parkour.block_id

tag @s add this
execute as @e[type=marker,tag=parkour,tag=teleport_block,tag=!this] if score @s parkour.block_id = temp temp run tag @s add that

execute as @a[tag=teleport_scheduled,dx=0,scores={minigames.timer1=..0}] run function minigames:parkour/special_blocks/teleport_block/mechanics/teleport

execute as @e[type=marker,tag=parkour,tag=teleport_block] unless score @s minigames.timer4 matches 1 if score @s parkour.block_id = temp temp run scoreboard players set @s parkour.toggle 1

execute as @e[type=marker,tag=parkour,tag=teleport_block,tag=!this] run tag @s remove that
tag @s remove this
