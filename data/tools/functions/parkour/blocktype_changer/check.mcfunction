
advancement revoke @s only tools:blocktype_changer

execute if predicate tools:main_blocktype_changer as @e[type=marker,tag=parkour,tag=!no_select] at @s if block ~ ~1 ~ dead_tube_coral_fan if entity @e[type=item,dy=1] run function tools:parkour/blocktype_changer/change_main

execute if predicate tools:secondary_blocktype_changer as @e[type=marker,tag=parkour,tag=!no_select] at @s if block ~ ~1 ~ dead_tube_coral_fan run function tools:parkour/blocktype_changer/change_secondary