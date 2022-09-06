
# Sets Frogs timer
scoreboard players set @s timer1 16

# Adds 1 to 9 ticks to the timer (for more random)
function main:codelib/rng
scoreboard players operation @s timer1 += rng temp

# Sets timer for up and down motion
scoreboard players operation @s timer2 = @s timer1
scoreboard players set math temp 2
scoreboard players operation @s timer2 /= math temp
