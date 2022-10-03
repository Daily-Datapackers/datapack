
# Marks you for standing on a teleport block 
tag @s add on_teleport_block

# Activates the teleport block you're standing on
execute as @e[type=marker,tag=parkour,tag=teleport_block] if score @s parkour.active matches 1 if score @s parkour.toggle matches 0 at @s positioned ~ ~1 ~ align xyz if entity @p[dx=0] as @a[dx=0] run function minigames:parkour/special_blocks/teleport_block/mechanics/setup

# Activates function that check if you're still standing on a teleport block
function minigames:parkour/special_blocks/teleport_block/revoke_trigger_check
