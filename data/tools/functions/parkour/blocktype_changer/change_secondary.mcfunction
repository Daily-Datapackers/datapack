
# Stores the block id of a dropped item in the secondary blocktype of the block below
execute align xyz if entity @e[type=item,limit=1,dy=1] run data modify entity @s data.BlockType[1] set from entity @e[type=item,limit=1,dy=1] Item.id

# If there is no dropped item it sets the blocktype to null(means nothing or empty)
execute align xyz unless entity @e[type=item,limit=1,dy=1] run data modify entity @s data.BlockType[1] set value "null"

# Breaks the block and places it again to indicate that someting changed
setblock ~ ~ ~ air
function minigames:parkour/special_blocks/place_block