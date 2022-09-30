
execute align xyz if entity @e[type=item,limit=1,dy=1] run data modify entity @s data.BlockType[1] set from entity @e[type=item,limit=1,dy=1] Item.id

execute align xyz unless entity @e[type=item,limit=1,dy=1] run data modify entity @s data.BlockType[1] set value "null"

setblock ~ ~ ~ air

function minigames:parkour/special_blocks/place_block