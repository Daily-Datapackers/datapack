execute if entity @s[scores={c.equipped_cosmetic=0}] run tellraw @s {"text":"Equipped \"Death\" cosmetic!","color":"green"}
execute if entity @s[scores={c.equipped_cosmetic=1..}] run tellraw @s {"text":"Changed cosmetic to \"Death\"!","color":"green"}
scoreboard players set @s c.equipped_cosmetic 1005
execute at @s run kill @e[type=armor_stand,tag=c.cosmeticarmorstand,limit=1,sort=nearest,distance=..0.5]
execute at @s run kill @e[type=area_effect_cloud,tag=c.cosmeticentity,limit=1,sort=nearest,distance=..0.5]