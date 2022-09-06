
# Revomes one from the frogs timer
scoreboard players remove @s timer1 1

# Blocks this frog from giving more than one point
execute if entity @s[nbt={HurtTime:8s}] run tag @s add hit

# Controlls the up and down motion
execute if score @s timer1 > @s timer2 run tp @s ~ ~.1 ~
execute if score @s timer1 < @s timer2 run tp @s ~ ~-.1 ~

# Removes the point blocker when done with its animation cycle
execute if score @s timer1 matches 0 run tag @s remove hit