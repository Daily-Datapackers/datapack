
### Only activate this function if someone is in a parkour map with special parkor blocks

#
execute as @e[type=marker,tag=parkour,tag=toggle_block,scores={parkour.active=1}] at @s run function minigames:parkour/special_blocks/toggle_block/mechanics/controller


