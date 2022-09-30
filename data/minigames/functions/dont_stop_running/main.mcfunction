execute as @s[predicate=!minigames:is_running,scores={minigames.timer1=..0}] run scoreboard players set @s minigames.timer1 1
execute as @s[predicate=minigames:is_running] run scoreboard players set @s minigames.timer1 0
execute as @s[ scores={minigames.timer1=1..}] at @s unless block ~ ~-1 ~ air run scoreboard players add @s minigames.timer1 1
execute as @s[ scores={minigames.timer1=3..}] at @s run function minigames:dont_stop_running/death
execute as @s[predicate=minigames:is_sneaking] run function minigames:dont_stop_running/death