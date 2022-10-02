
tag @s remove this

# Deactivates itselfe
scoreboard players set @s parkour.toggle 0

# Sets its x positon to its home x positon
execute store result score temp temp run data get entity @s data.Home[0] 10
execute store result entity @s Pos[0] double 0.1 run scoreboard players get temp temp

# Sets its y positon to its home y positon
execute store result score temp temp run data get entity @s data.Home[1] 10
execute store result entity @s Pos[1] double 0.1 run scoreboard players get temp temp

# Sets its z positon to its home z positon
execute store result score temp temp run data get entity @s data.Home[2] 10
execute store result entity @s Pos[2] double 0.1 run scoreboard players get temp temp

# Sets its timer start to the one saved in its nbt
execute store result score @s minigames.timer1 run data get entity @s data.TimerStart

# Marks it to place a block at its position
tag @s add need_block

schedule function minigames:parkour/special_blocks/snake_block/mechanics/set_start_block 1t append