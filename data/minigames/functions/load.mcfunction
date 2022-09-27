
# Minigames timer
scoreboard objectives add minigames.timer1 dummy
scoreboard objectives add minigames.timer2 dummy
scoreboard objectives add minigames.timer3 dummy

### For Whack a Frog
scoreboard objectives add whack_a_frog.id dummy

### For Pakour
# Id for the different parkours
scoreboard objectives add parkour.id dummy

# Id for the special blocks
scoreboard objectives add parkour.block_id dummy

scoreboard objectives add parkour.active dummy
scoreboard objectives add parkour.toggle dummy

# Remove forgotten and unused markers
execute as @e[type=marker,tag=parkour] at @s if block ~ ~ ~ air run schedule clear tools:parkour/block_selector/selection_particles
execute as @e[type=marker,tag=parkour] at @s if block ~ ~ ~ air run kill

### For Dont Stop Running
gamerule doImmediateRespawn true
