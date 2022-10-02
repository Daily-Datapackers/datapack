
tag @s remove this

# Moves to the positon of the next block in the path
tp ~ ~ ~

# If multiple blocktypes are set, it will switch between them
execute unless data entity @s data{BlockType:["null"]} run function minigames:parkour/special_blocks/snake_block/mechanics/cycle_blocktypes

# Places the block
function minigames:parkour/special_blocks/place_block
