
tag @s add teleport_scheduled
effect give @s slowness 1 255 true

scoreboard players set @s minigames.timer1 12

title @s times 7 10 7
title @s title {"text":"\uF000","font":"overlay_fx","color":"black"}

function minigames:parkour/special_blocks/teleport_block/mechanics/tp_countdown
