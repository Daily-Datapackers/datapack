
# Checks if you're standing on a teleport block and if you are, it blocks you from activating it every tick
execute as @a[tag=on_teleport_block] at @s unless block ~.5 ~-1 ~.5 note_block[powered=false,instrument=harp,note=1] unless block ~-.5 ~-1 ~-.5 note_block[powered=false,instrument=harp,note=1] unless block ~.5 ~-1 ~-.5 note_block[powered=false,instrument=harp,note=1] unless block ~-.5 ~-1 ~.5 note_block[powered=false,instrument=harp,note=1] unless entity @e[type=marker,tag=parkour,tag=trigger_block,dx=0] run function minigames:parkour/special_blocks/teleport_block/revoke_trigger

# Repeats this function if there is a player that is still standing on a teleport block
execute as @p[tag=on_teleport_block] run schedule function minigames:parkour/special_blocks/teleport_block/revoke_trigger_check 1t replace
