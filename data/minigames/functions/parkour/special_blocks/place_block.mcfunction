
setblock ~ ~-1 ~ minecraft:glass_pane keep

execute if block ~ ~-1 ~ glass_pane run tag @s add support_block

summon falling_block ~ ~ ~
data modify entity @e[type=minecraft:falling_block,limit=1,sort=nearest] BlockState.Name set from entity @s data.BlockType

execute if entity @s[tag=support_block] run schedule function minigames:parkour/special_blocks/remove_support_block 2t append