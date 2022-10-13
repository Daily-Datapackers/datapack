### Temp Tick

##Run dont stop running functions
#Main Datapack
execute as @a[tag=dont_stop_running.running] run function minigames:dont_stop_running/main
#Checkpoints
execute as @e[type=marker,tag=spawn_checkpoint] at @s run function minigames:dont_stop_running/checkpoints/place
execute as @e[tag=checkpoint] at @s run function minigames:dont_stop_running/checkpoints/checkpoint
#Finish
execute as @e[type=armor_stand,tag=spawn_finish] at @s run function minigames:dont_stop_running/finish/place
execute as @e[type=armor_stand,tag=finish] at @s run function minigames:dont_stop_running/finish/main

# Schedules this function, when someone has the tag (ask HeDeAn if you want to know more)
execute as @p[tag=dont_stop_running.running] run schedule function minigames:dont_stop_running/temp_tick 1t
