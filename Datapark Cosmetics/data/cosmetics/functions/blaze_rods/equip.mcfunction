#run this ONLY if the entity requires an cosmetic entity
execute unless entity @s[tag=c.requires.ce] run function cosmetics:summon_ce
#give this tag ONLY if the entity requires an cosmetic entity
tag @s add c.requires_ce
#add the name of the cosmetic as a tag
tag @s add c.blaze_rods
#add the tag that shows that the player currently has a cosmetic equipped
tag @s add c.has_cosmetic
