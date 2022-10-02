
# Marks you for standing in a trigger block 
tag @s add in_trigger_block

# Activates the trigger block you're standing in
execute as @e[type=marker,tag=parkour,tag=trigger_block] if score @s parkour.active matches 1 if score @s parkour.toggle matches 0 at @s align xyz if entity @p[dx=0] run function minigames:parkour/special_blocks/trigger_block/mechanics/trigger

# Activates function that check if you're still standing in a trigger block
function minigames:parkour/special_blocks/trigger_block/revoke_trigger_check
