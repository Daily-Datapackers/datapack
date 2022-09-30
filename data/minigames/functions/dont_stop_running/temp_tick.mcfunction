execute as @a[tag=dont_stop_running.running] run function minigames:dont_stop_running/main
execute as @e[type=marker,tag=spawn_checkpoint] at @s run function minigames:dont_stop_running/checkpoints/place
execute as @e[tag=checkpoint] at @s run function minigames:dont_stop_running/checkpoints/checkpoint

execute as @p[tag=dont_stop_running.running] run schedule function minigames:dont_stop_running/temp_tick 1t