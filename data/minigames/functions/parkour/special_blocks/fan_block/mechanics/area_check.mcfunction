
execute align xyz as @a[dx=0] run effect give @s levitation 1 10 true

scoreboard players remove @s minigames.timer3 1

execute if score @s minigames.timer3 matches 1.. positioned ~ ~1 ~ run function minigames:parkour/special_blocks/fan_block/mechanics/area_check
