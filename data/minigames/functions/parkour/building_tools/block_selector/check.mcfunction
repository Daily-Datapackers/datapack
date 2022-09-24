
advancement revoke @s only minigames:building_tools/block_selector

execute if predicate main:is_sneaking as @e[type=marker,tag=parkour,tag=!selected,tag=!multi,distance=..3] run function minigames:parkour/building_tools/block_selector/multi_select
execute unless predicate main:is_sneaking as @e[type=marker,tag=parkour,distance=..3] run function minigames:parkour/building_tools/block_selector/single_select

execute unless entity @e[type=marker,tag=parkour,distance=..3] as @e[type=marker,tag=parkour,tag=selected] run function minigames:parkour/building_tools/block_selector/deselect
