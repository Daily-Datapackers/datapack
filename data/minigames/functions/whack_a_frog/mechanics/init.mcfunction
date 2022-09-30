
# Remove activated button
tp @e[type=villager,tag=whack_a_frog,tag=start_button,limit=1,sort=nearest] ~ ~-500 ~

# Marks the activated machine
tag @s add whack_a_frog.playing

# Sets play time to 1 min.
scoreboard players set @s minigames.timer1 20
scoreboard players set @s minigames.timer2 30

# Stats a temporary tick function
function minigames:whack_a_frog/mechanics/temp_tick
