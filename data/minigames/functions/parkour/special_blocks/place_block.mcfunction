
tag @s add support_block

setblock ~ ~-1 ~ minecraft:glass_pane keep

summon falling_block ~ ~ ~
data modify entity @e[type=minecraft:falling_block,limit=1,sort=nearest] BlockState.Name set from entity @s data.BlockType

schedule function minigames:parkour/special_blocks/remove_support_block 2t append