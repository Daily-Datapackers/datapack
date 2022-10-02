
# Saves the vertical head rotation of the player in the score %val
execute store result score temp temp run data get entity @s Rotation[1]
scoreboard players operation %val settings += temp temp

# Sets score %val to 0 if sneaking
execute if predicate main:is_sneaking run scoreboard players set %val settings 0