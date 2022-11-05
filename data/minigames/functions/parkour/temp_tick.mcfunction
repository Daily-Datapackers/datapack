
### Only activate this function if someone is in a parkour map with special parkor blocks

# Executes the controller function of the parkour blocks
execute as @e[type=marker,tag=parkour,tag=toggle_block,scores={parkour.active=1}] at @s run function minigames:parkour/special_blocks/toggle_block/mechanics/controller
execute as @e[type=marker,tag=parkour,tag=snake_block,scores={parkour.active=1}] at @s run function minigames:parkour/special_blocks/snake_block/mechanics/controller
execute as @e[type=marker,tag=parkour,tag=trigger_block,scores={parkour.active=1}] run function minigames:parkour/special_blocks/trigger_block/mechanics/controller
execute as @e[type=marker,tag=parkour,tag=fan_block,scores={parkour.active=1}] at @s run function minigames:parkour/special_blocks/fan_block/mechanics/controller

# Resets a blocks timer
execute as @e[type=marker,tag=parkour,scores={parkour.active=1,minigames.timer2=1..}] if score @s minigames.timer1 > @s minigames.timer2 run scoreboard players set @s minigames.timer1 0

# Runs the timer for parkour blocks
execute as @e[type=marker,tag=parkour,scores={parkour.active=1,minigames.timer2=1..}] run scoreboard players add @s minigames.timer1 1

# Special timer for Trigger Blocks
execute as @e[type=marker,tag=parkour,tag=trigger_block,scores={parkour.active=1,parkour.toggle=1,minigames.timer4=1..}] run scoreboard players remove @s minigames.timer3 1