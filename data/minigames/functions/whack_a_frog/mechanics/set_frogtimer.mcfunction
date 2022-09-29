
# Sets Frogs timer
scoreboard players set @s minigames.timer1 16

# Adds 1 to 9 ticks to the timer (for more random)
rand 1 9 rng temp
scoreboard players operation @s minigames.timer1 += rng temp

# Sets timer for up and down motion
scoreboard players operation @s minigames.timer2 = @s minigames.timer1
scoreboard players set math temp 2
scoreboard players operation @s minigames.timer2 /= math temp
