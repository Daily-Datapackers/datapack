##Triggered when you go througth the finish

#Does the particles, tittle, sounds
execute as @s[tag=dont_stop_running.running] run title @a title {"text":"! You finished !","color":"gold"}
execute as @s[tag=dont_stop_running.running] run playsound minecraft:ui.toast.challenge_complete master @s ~ ~ ~
execute as @s[tag=dont_stop_running.running] run particle minecraft:totem_of_undying ~ ~ ~ 0.3 1 0.3 0.3 30

#Remove you the tag
tag @a remove dont_stop_running.running