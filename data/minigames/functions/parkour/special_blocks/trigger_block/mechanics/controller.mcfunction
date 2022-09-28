
execute if score @s minigames.timer2 matches 1.. if score @s minigames.timer1 = @s minigames.timer2 run function minigames:parkour/special_blocks/trigger_block/mechanics/switch_back
execute if score @s minigames.timer4 matches 1.. if score @s minigames.timer3 matches 0 run scoreboard players set @s parkour.toggle 0
