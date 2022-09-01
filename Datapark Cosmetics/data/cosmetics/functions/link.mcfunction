#/!\ DON'T MODIFY OR YOU MIGHT BREAK STUFF /!\ 

# adds the "selected" tag ._.
tag @s add selected 
#sets %compare's c.id score to the same as the cosmetic entites c.id score
scoreboard players operation %compare c.id = @s c.id
#checks as all players if the player id of @s matches %compare's c.id and runs the cosmetic:actually_link function if yes
execute as @a[] if score %compare c.id = @s player.id at @s positioned ~ ~-3 ~ run function cosmetics:actually_link
# removes the "selected" tag ._.
tag @s remove selected 
