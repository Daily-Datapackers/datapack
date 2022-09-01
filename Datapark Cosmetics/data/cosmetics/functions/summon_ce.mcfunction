#/!\ DON'T MODIFY THIS FILE OR YOU MIGHT BREAK STUFF/!\ 

#summons the cosmetic entity (aec)
summon area_effect_cloud ~ ~-3 ~ {Duration:2147483647,Tags:["c.cosmeticentity"],Passengers:[{id:"minecraft:armor_stand",NoBasePlate:1b,Invisible:1b,DisabledSlots:4144959,Pose:{Head:[0f,1f,0f]},Tags:["c.cosmeticarmorstand"]}]}
#summons cosmetic armorstand (used for display)
scoreboard players operation @e[type=area_effect_cloud,tag=c.cosmeticentity,limit=1,sort=nearest] c.id = @s player.id

