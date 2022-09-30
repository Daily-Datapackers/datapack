
tag @s add this

summon marker ~ ~ ~ {Tags:["parkour","snake_block_part","no_select","new"]}
execute as @e[type=marker,tag=parkour,tag=snake_block_part,tag=new] run function minigames:parkour/special_blocks/snake_block/mechanics/setup_snake_part

execute if entity @s[tag=this] positioned ~-1 ~ ~ if block ~ ~ ~ light[level=0] run function minigames:parkour/special_blocks/snake_block/mechanics/create_new_block
execute if entity @s[tag=this] positioned ~1 ~ ~ if block ~ ~ ~ light[level=0] run function minigames:parkour/special_blocks/snake_block/mechanics/create_new_block
execute if entity @s[tag=this] positioned ~ ~-1 ~ if block ~ ~ ~ light[level=0] run function minigames:parkour/special_blocks/snake_block/mechanics/create_new_block
execute if entity @s[tag=this] positioned ~ ~1 ~ if block ~ ~ ~ light[level=0] run function minigames:parkour/special_blocks/snake_block/mechanics/create_new_block
execute if entity @s[tag=this] positioned ~ ~ ~-1 if block ~ ~ ~ light[level=0] run function minigames:parkour/special_blocks/snake_block/mechanics/create_new_block
execute if entity @s[tag=this] positioned ~ ~ ~1 if block ~ ~ ~ light[level=0] run function minigames:parkour/special_blocks/snake_block/mechanics/create_new_block
execute if entity @s[tag=this] positioned ~ ~-1 ~ if block ~ ~ ~ glass_pane run function minigames:parkour/special_blocks/snake_block/mechanics/create_new_block

execute if entity @s[tag=this] at @s run function minigames:parkour/special_blocks/snake_block/mechanics/end_snake
