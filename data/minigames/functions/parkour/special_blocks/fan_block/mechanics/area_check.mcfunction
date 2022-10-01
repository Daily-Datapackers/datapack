
# Checks for player in current block and applies the levitation effect
execute align xyz as @a[dx=0] run effect give @s levitation 1 10 true

# Removes 1 from the timer(blocks range)
scoreboard players remove @s minigames.timer3 1

# If blocks range distance isn't reached execute this function 1 block higher
execute if score @s minigames.timer3 matches 1.. positioned ~ ~1 ~ run function minigames:parkour/special_blocks/fan_block/mechanics/area_check
