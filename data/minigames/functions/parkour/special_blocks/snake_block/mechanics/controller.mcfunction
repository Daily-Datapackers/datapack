
execute if score @s parkour.toggle matches 1 if score @s minigames.timer1 = @s minigames.timer2 run function minigames:parkour/special_blocks/snake_block/mechanics/search_path
execute if score @s minigames.timer1 = @s minigames.timer2 run scoreboard players set @s minigames.timer1 1

execute as @e[type=marker,tag=parkour,tag=snake_block_part] at @s if score @s minigames.timer1 = @s minigames.timer2 run function minigames:parkour/special_blocks/snake_block/mechanics/remove_block

