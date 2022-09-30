
execute store result score temp temp run data get entity @s Rotation[1]
scoreboard players operation %val settings += temp temp

execute if predicate main:is_sneaking run scoreboard players set %val settings 0