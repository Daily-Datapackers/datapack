
advancement revoke @s only tools:block_selector

execute unless predicate main:is_sneaking as @e[type=marker,tag=parkour,tag=!selected,tag=!multi,distance=..3] run function tools:parkour/block_selector/multi_select
execute if predicate main:is_sneaking as @e[type=marker,tag=parkour,distance=..3] run function tools:parkour/block_selector/single_select

execute unless entity @e[type=marker,tag=parkour,distance=..3] as @e[type=marker,tag=parkour,tag=selected] run function tools:parkour/block_selector/deselect
