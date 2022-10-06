
# Blocks default settings and physical placement
tag @s remove new

function minigames:parkour/special_blocks/set_block_id

scoreboard players set @s parkour.active 0

scoreboard players set @s minigames.timer3 0
scoreboard players set @s minigames.timer4 0

# Special blockstates for specific texture 
setblock ~ ~ ~ acacia_leaves[distance=7,persistent=true,waterlogged=false]
