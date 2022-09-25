
tag @s add this

execute store result score temp temp run data get entity @s SelectedItem.tag.Setting
scoreboard players add temp temp 1

execute if score temp temp matches 4 run scoreboard players set temp temp 1

summon item_frame ~ ~ ~ {Tags:["setting_cycler"]}

item replace entity @e[type=item_frame,tag=setting_cycler,limit=1,sort=nearest] container.0 from entity @p[tag=this] weapon.mainhand

execute store result entity @e[type=item_frame,tag=setting_cycler,limit=1,sort=nearest] Item.tag.Setting int 1 run scoreboard players get temp temp

# Tells the selected setting
execute if score temp temp matches 1 run tellraw @s {"text":"=-\nToggle Active\n=-","color":"aqua"}
execute if score temp temp matches 2 run tellraw @s {"text":"=-\nTimere Setter\n=-","color":"aqua"}
execute if score temp temp matches 3 run tellraw @s {"text":"=-\nTimere Start Setter\n=-","color":"aqua"}


item replace entity @s weapon from entity @e[type=item_frame,tag=setting_cycler,limit=1,sort=nearest] container.0

kill @e[type=item_frame,tag=setting_cycler,limit=1,sort=nearest]

tag @s remove this