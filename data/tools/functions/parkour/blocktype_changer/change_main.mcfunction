
# Stores the block id of a dropped item in the main blocktype of the block below
execute align xyz run data modify entity @s data.BlockType[0] set from entity @e[type=item,limit=1,dy=1] Item.id

# Removes old material
setblock ~ ~ ~ air

# Places the block again with the updated material
function minigames:parkour/special_blocks/place_block
