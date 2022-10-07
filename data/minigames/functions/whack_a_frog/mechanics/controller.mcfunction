
# Keeps the player near the machine as long as the minigame is active to prevent breaking stuff
execute positioned ^ ^ ^2 unless entity @p[tag=whack_a_frog.playing,distance=..2] align y run tp @p[tag=whack_a_frog.playing] ~ ~ ~

# Decreases the sub timer and the timer (if sub timer is 0) of the controller
scoreboard players remove @s minigames.timer1 1
execute if score @s minigames.timer1 matches 0 if score @s minigames.timer2 matches 1.. run scoreboard players remove @s minigames.timer2 1

# Sets the rng range from 1 to 9 and gets a random frog id
execute store result score rng temp run rand 1 9

# Activates the frog with the previously selected frog id
execute if score @s minigames.timer1 matches 0 as @e[type=frog,tag=whack_a_frog,distance=..2,scores={minigames.timer1=0}] if score @s whack_a_frog.id = rng temp run function minigames:whack_a_frog/mechanics/set_frogtimer

# Resets the sub timer of the controller
execute if score @s minigames.timer1 matches 0 if score @s minigames.timer2 matches 1.. run scoreboard players set @s minigames.timer1 20

