
execute positioned ~ ~1 ~ align xyz run data modify entity @s data.BlockType set from entity @e[type=item,limit=1,dx=0] Item.id

setblock ~ ~ ~ air

function minigames:parkour/special_blocks/place_block
