
# Gets the facing direction of the executing entity
#
# 0 = south
# 90 = west
# 180 = north
# -90 = east

execute store result score temp temp run data get entity @s Rotation[0] 10

execute if score temp temp matches -455..455 run scoreboard players set dir temp 0
execute if score temp temp matches 456..1355 run scoreboard players set dir temp 90
execute if score temp temp matches 1356..1800 run scoreboard players set dir temp 180
execute if score temp temp matches -1799..-1356 run scoreboard players set dir temp 180
execute if score temp temp matches -1355..-456 run scoreboard players set dir temp -90



