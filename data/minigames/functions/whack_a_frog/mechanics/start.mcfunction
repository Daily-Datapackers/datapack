
advancement revoke @s only minigames:activate_whack_a_frog
gamemode adventure

# Marks the player who plays on this mashine if in reach
execute if entity @e[type=armor_stand,tag=whack_a_frog,distance=..3] run tag @s add whack_a_frog.playing

# Starts the corresponding mashine if a player is in reach
execute as @e[type=armor_stand,tag=whack_a_frog] at @s positioned ^ ^ ^2 if entity @p[tag=whack_a_frog.playing,distance=..3] positioned ^ ^ ^-2 run function minigames:whack_a_frog/mechanics/init
