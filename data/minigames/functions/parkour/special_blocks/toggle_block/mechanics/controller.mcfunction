# Checks the blocks timer if it has one and executes a function if it reaches its duration length
execute if score @s minigames.timer1 matches 1.. if score @s minigames.timer1 = @s minigames.timer2 run function minigames:parkour/special_blocks/toggle_block/mechanics/switch

# Checks the blocks toggle state and if something changes it executes a function
execute if score @s parkour.toggle matches 0 if block ~ ~ ~ structure_void run function minigames:parkour/special_blocks/place_block
execute if score @s parkour.toggle matches 1 unless block ~ ~ ~ structure_void run setblock ~ ~ ~ structure_void

