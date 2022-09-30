
# Gives ids to the frogs (not glabal)
scoreboard players add temp whack_a_frog.id 1
scoreboard players operation @s whack_a_frog.id = temp whack_a_frog.id

# Resets the scoreboard for the next mashine
execute if score temp whack_a_frog.id matches 9.. run scoreboard players reset temp whack_a_frog.id

# Sets the frogs timer to 0
scoreboard players set @s minigames.timer1 0

# Rotate frog to player facing direction
execute store result entity @s Rotation[0] float 1 run scoreboard players get dir temp
