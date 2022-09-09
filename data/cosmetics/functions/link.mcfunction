# ⚠️ DON'T MODIFY OR YOU MIGHT BREAK STUFF ⚠️

# Adds the "selected" tag ._.
tag @s add selected 

# Sets %compare's c.id score to the same as the cosmetic entites c.id score
scoreboard players operation %compare c.id = @s c.id

#Sets %kill's c.id score to 1 (what else did you expect ;-;)
scoreboard players set %kill c.id 1 

# Checks as all players if the player id of @s matches %compare's c.id and runs the cosmetic:actually_link function if yes
execute as @a if score %compare c.id = @s player.id at @s run function cosmetics:actually_link

# Runs the kill function if the c.id score for %kill matches 1
execute if score %kill c.id matches 1 at @s run function cosmetics:kill

# Removes the "selected" tag ._.
tag @s remove selected 