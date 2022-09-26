
tag @s remove new

scoreboard players set @s parkour.active 1
scoreboard players set @s minigames.timer1 1
scoreboard players operation @s minigames.timer2 = @e[type=marker,tag=parkour,tag=snake_block,tag=this,limit=1,sort=nearest] minigames.timer2
scoreboard players operation @s minigames.timer2 *= @e[type=marker,tag=parkour,tag=snake_block,tag=this,limit=1,sort=nearest] minigames.timer3
