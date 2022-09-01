# ⚠️ DON'T MODIFY UNMARKED PARTS OF THIS FILE OR YOU MIGHT BREAK STUFF ⚠️

# TPs the cosmetic entity to players with the same id
tp @e[type=area_effect_cloud,tag=c.cosmeticentity,tag=selected,limit=1] ~ ~ ~
# Air toggling > needed for less "lagback" when tping
execute as @e[type=area_effect_cloud,tag=c.cosmeticentity,tag=selected,limit=1] store result entity @s Air short 1 run time query gametime

# Adds the <c.cosmetic> tag to the cosmetic armorstand if the player has the same
# ⚠️ Copy this and replace <c.blaze_rods> with the name of your cosmetic ⚠️
execute if entity @s[tag=c.blaze_rods] run tag @e[type=armor_stand,tag=c.cosmeticarmorstand,limit=1,sort=nearest] add c.blaze_rods
