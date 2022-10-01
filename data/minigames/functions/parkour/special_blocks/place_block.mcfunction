
# Detects if the block below is a Light block (Important for snake block)
execute if block ~ ~-1 ~ light[level=0] run tag @s add light_block

# Places a support block for the falling block if the block below is air or light
fill ~ ~-1 ~ ~ ~-1 ~ minecraft:glass_pane replace #minigames:air

# If a support block is needed it marks this block for removing it later
execute if block ~ ~-1 ~ glass_pane run tag @s add support_block

setblock ~ ~ ~ air

# Summons a falling block and sets its block BlockType
summon falling_block ~ ~ ~
data modify entity @e[type=minecraft:falling_block,limit=1,sort=nearest] BlockState.Name set from entity @s data.BlockType[0]

# If support block was needed this will remove it after the falling block turns into a real block
execute if entity @s[tag=support_block] run schedule function minigames:parkour/special_blocks/remove_support_block 2t append