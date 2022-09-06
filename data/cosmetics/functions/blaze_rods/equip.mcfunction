# Sends a message if the player already has a cosmetic equipped
execute if entity @s[tag=c.has_cosmetic] run tellraw @s {"text":"You already have a cosmetic equipped!","color":"red"}
# Run this ONLY if the entity requires an cosmetic entity
execute unless entity @s[tag=c.has_cosmetic] unless entity @s[tag=c.requires.ce] run function cosmetics:summon_ce
# Give this tag ONLY if the entity requires an cosmetic entity
execute unless entity @s[tag=c.has_cosmetic] run tag @s add c.requires_ce
# Add the tag that shows that the player currently has a cosmetic equipped
execute unless entity @s[tag=c.has_cosmetic] run tag @s add c.has_cosmetic
# Add the name of the cosmetic as a tag
execute unless entity @s[tag=c.has_cosmetic] run tag @s add c.blaze_rods
