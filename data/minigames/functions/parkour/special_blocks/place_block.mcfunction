
execute if block ~ ~-1 ~ light[level=0] run tag @s add light_block

fill ~ ~-1 ~ ~ ~-1 ~ minecraft:glass_pane replace #minigames:air

execute if block ~ ~-1 ~ glass_pane run tag @s add support_block

setblock ~ ~ ~ air

summon falling_block ~ ~ ~
data modify entity @e[type=minecraft:falling_block,limit=1,sort=nearest] BlockState.Name set from entity @s data.BlockType[0]

execute if entity @s[tag=support_block] run schedule function minigames:parkour/special_blocks/remove_support_block 2t append