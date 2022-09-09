# ⚠️ DON'T MODIFY UNMARKED PARTS OF THIS FILE OR YOU MIGHT BREAK STUFF ⚠️
# Does something
scoreboard players set %kill c.id 0

# TPs the cosmetic entity to players with the same id
tp @e[type=area_effect_cloud,tag=c.cosmeticentity,tag=selected,limit=1] ~ ~ ~

# Adds the <c.cosmetic> tag to the cosmetic armorstand if the player has the same
# ⚠️ Copy this and replace <c.blaze_rods> with the name of your cosmetic ⚠️
execute if entity @s[scores={c.equipped_cosmetic=10000..}] run scoreboard players operation @e[type=armor_stand,tag=c.cosmeticarmorstand,limit=1,sort=nearest] c.equipped_cosmetic = @s c.equipped_cosmetic

# Air toggling > needed for less "lagback" when tping
execute as @e[type=area_effect_cloud,tag=c.cosmeticentity,tag=selected,limit=1] store result entity @s Air short 1 run time query gametime

