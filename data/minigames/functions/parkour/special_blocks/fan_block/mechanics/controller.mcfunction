
execute positioned ~ ~1 ~ run function minigames:parkour/special_blocks/fan_block/mechanics/area_check

# Wind particles in blow direction
particle poof ~ ~ ~ ~ ~100000000 ~ 0.000000005 0

# Resets timer(range of block)
scoreboard players operation @s minigames.timer3 = @s minigames.timer4
