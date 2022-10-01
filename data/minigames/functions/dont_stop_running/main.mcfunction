## This executes when someone is in the Dont Stop Running game

# If someone is running = scoreboard minigames.timer1 sets to 1
execute as @s[predicate=!minigames:is_running,scores={minigames.timer1=..0}] run scoreboard players set @s minigames.timer1 1

# If someone stop running = scoreboard minigames.timer1 sets to 0
execute as @s[predicate=minigames:is_running] run scoreboard players set @s minigames.timer1 0

# If minigames.timer1 is bigger then one = add 1 every tick
execute as @s[ scores={minigames.timer1=1..}] at @s unless block ~ ~-1 ~ air run scoreboard players add @s minigames.timer1 1

# If minigames.timer1 is bigger then three or player is sneaking = run death function
execute as @s[ scores={minigames.timer1=3..}] at @s run function minigames:dont_stop_running/death
execute as @s[predicate=minigames:is_sneaking] run function minigames:dont_stop_running/death
