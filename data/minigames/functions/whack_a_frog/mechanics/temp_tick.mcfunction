
# Executes all controller related things
execute as @e[type=armor_stand,tag=whack_a_frog,scores={minigames.timer1=1..}] at @s run function minigames:whack_a_frog/mechanics/controller

# Executes all things the frogs do
execute as @e[type=frog,tag=whack_a_frog,scores={minigames.timer1=1..}] at @s run function minigames:whack_a_frog/mechanics/frogs

# Lets the minigame end and resets everything
execute as @e[type=armor_stand,tag=whack_a_frog,scores={minigames.timer2=0}] at @s run function minigames:whack_a_frog/mechanics/game_end

# Keeps the temp_tick function repeating as long as the minigame runs
execute if entity @e[type=armor_stand,tag=whack_a_frog,limit=1,scores={minigames.timer1=1..}] run schedule function minigames:whack_a_frog/mechanics/temp_tick 1t
