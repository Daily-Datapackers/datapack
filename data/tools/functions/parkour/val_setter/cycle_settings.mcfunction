
# Marks this player as the executor of the cycling function
tag @s add this

# Stores the current setting and adds 1
execute store result score temp temp run data get entity @s SelectedItem.tag.Setting
scoreboard players add temp temp 1

# If the setting is higher than the existing amount of settings it switches back to the first one
execute if score temp temp matches 7 run scoreboard players set temp temp 1

# Summons a temporary item frame for item nbt editing
summon item_frame ~ ~ ~ {Tags:["setting_cycler"]}

# Copies the tool from you hand in the item frame
item replace entity @e[type=item_frame,tag=setting_cycler,limit=1,sort=nearest] container.0 from entity @p[tag=this] weapon.mainhand

# Sets the setting of the item in the item frame to the new one
execute store result entity @e[type=item_frame,tag=setting_cycler,limit=1,sort=nearest] Item.tag.Setting int 1 run scoreboard players get temp temp

# Tells the selected setting
execute if score temp temp matches 1 run tellraw @s {"text":"=-\nParkour ID Setter\n=-","color":"aqua"}
execute if score temp temp matches 2 run tellraw @s {"text":"=-\nToggle Active\n=-","color":"aqua"}
execute if score temp temp matches 3 run tellraw @s {"text":"=-\nTimer 1 Setter\n=-","color":"aqua"}
execute if score temp temp matches 4 run tellraw @s {"text":"=-\nTimer 2 Setter\n=-","color":"aqua"}
execute if score temp temp matches 5 run tellraw @s {"text":"=-\nTimer 3 Setter\n=-","color":"aqua"}
execute if score temp temp matches 6 run tellraw @s {"text":"=-\nTimer 4 Setter\n=-","color":"aqua"}

# Replaces the tool in your hand with the one with the updated settings from the item frame
item replace entity @s weapon from entity @e[type=item_frame,tag=setting_cycler,limit=1,sort=nearest] container.0

# Removes the item frame
kill @e[type=item_frame,tag=setting_cycler,limit=1,sort=nearest]

# Unmarks you
tag @s remove this