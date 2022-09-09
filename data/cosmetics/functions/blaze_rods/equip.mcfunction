execute if entity @s[scores={c.equipped_cosmetic=0}] run tellraw @s {"text":"Equipped \"Blaze Rods\" cosmetic!","color":"green"}
# Sends a message if the player already has a cosmetic equipped
execute if entity @s[scores={c.equipped_cosmetic=1..}] run tellraw @s {"text":"Changed cosmetic to \"Blaze Rods\"!","color":"green"}
# Run this ONLY if the entity requires an cosmetic entity
execute unless entity @s[scores={c.equipped_cosmetic=10001..}] run function cosmetics:summon_ce
#set the players cosmetic id
scoreboard players set @s c.equipped_cosmetic 10001