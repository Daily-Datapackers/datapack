# ⚠️ DON'T MODIFY OR YOU MIGHT BREAK STUFF ⚠️
tellraw @s {"text":"Succesfully unequipped cosmetic \"Blaze Rods\"!","color":"green"}
# Removes a bunch of tags
scoreboard players set @s c.equipped_cosmetic 0
# Kills the ce and cas
execute at @s run kill @e[type=armor_stand,tag=c.cosmeticarmorstand,limit=1,sort=nearest,distance=..0.5]
execute at @s run kill @e[type=area_effect_cloud,tag=c.cosmeticentity,limit=1,sort=nearest,distance=..0.5]
