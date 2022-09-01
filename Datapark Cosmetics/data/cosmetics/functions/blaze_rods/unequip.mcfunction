#/!\ DON'T MODIFY OR YOU MIGHT BREAK STUFF /!\ 
#remoces a bunch of tags
tag @s remove c.requires_ce
tag @s remove c.blaze_rods
tag @s remove c.has_cosmetic
#kills the ce and cas
execute at @s run kill @e[type=armor_stand,tag=c.cosmeticarmorstand,limit=1]
execute at @s run kill @e[type=area_effect_cloud,tag=c.cosmeticentity,limit=1]