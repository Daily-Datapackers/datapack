# Removes all unused markers at this block to prevent breaking stuff
execute align xyz run kill @e[type=marker,tag=parkour,tag=!new,dx=0]

tag @s remove new

# Default settings
function minigames:parkour/special_blocks/set_block_id

scoreboard players set @s parkour.active 0
scoreboard players set @s parkour.toggle 0
scoreboard players set @s minigames.timer1 0
scoreboard players set @s minigames.timer2 0
scoreboard players set @s minigames.timer3 0
scoreboard players set @s minigames.timer4 0

# Places the physical block
function minigames:parkour/special_blocks/place_block