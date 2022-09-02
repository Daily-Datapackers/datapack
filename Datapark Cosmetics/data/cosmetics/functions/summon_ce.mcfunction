# ⚠️ DON'T MODIFY THIS FILE OR YOU MIGHT BREAK STUFF ⚠️

# Summons the cosmetic entity (aec)
summon area_effect_cloud ~ ~ ~ {Duration:2147483647,Tags:["c.cosmeticentity","c.unidd"],Passengers:[{id:"minecraft:armor_stand",Invisible:1b,Marker:1b,Pose:{Head:[0f,1f,0f]},Tags:["c.cosmeticarmorstand"]}]}
# Summons cosmetic armorstand (used for display)
scoreboard players operation @e[type=area_effect_cloud,tag=c.cosmeticentity,tag=c.unidd,limit=1,sort=nearest] c.id = @s player.id
#Removes c.unidd
tag @e[type=area_effect_cloud,tag=c.cosmeticentity,tag=c.unidd,limit=1,sort=nearest] remove c.unidd
