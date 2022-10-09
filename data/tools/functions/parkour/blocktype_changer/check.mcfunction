
# Checks if the player is sneaking or not and executes the associated function
execute if predicate tools:main_blocktype_changer as @e[type=marker,tag=parkour,tag=!no_select] at @s if block ~ ~1 ~ dead_tube_coral_fan align xyz if entity @e[type=item,dy=1] run function tools:parkour/blocktype_changer/change_main

execute if predicate tools:secondary_blocktype_changer as @e[type=marker,tag=parkour,tag=!no_select] at @s if block ~ ~1 ~ dead_tube_coral_fan align xyz run function tools:parkour/blocktype_changer/change_secondary
