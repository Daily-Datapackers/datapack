##Checkpoint Setter - Spawnpoint
#Activated when clicked with checkpoint setter - give you checkpoint

#Give you the checkpoint
execute unless entity @e[tag=checkpoint,limit=1,distance=..1] run tellraw @a ["",{"text":"[","color":"gold"},{"text":"!","bold":true,"color":"light_purple"},{"text":"] ","color":"gold"},{"text":"DEBUG:","color":"green"},{"text":" No ","color":"white"},{"text":"checkpoints","color":"gold"},{"text":" detected!","color":"white"},{"text":"\n"},{"text":"[","color":"gold"},{"text":"?","bold":true,"color":"light_purple"},{"text":"] ","color":"gold"},{"text":"POTENTIONAL FIX: ","color":"green"},{"text":"You need to be ","color":"white"},{"text":"standing","bold":true,"color":"aqua"},{"text":" on the ","color":"white"},{"text":"Pressure Plate","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"[","color":"gold"},{"text":"Checkpoint","color":"light_purple"},{"text":"]","color":"gold"}]}},{"text":"!","color":"white"},{"text":"\n "}]
spawnpoint @s ~ ~ ~ ~
title @s actionbar {"text":"-!- Checkpoint Set -!-","color":"gold"}
playsound minecraft:entity.experience_orb.pickup master @s ~ ~ ~
#Debug message - was done correctly
tellraw @a ["",{"text":"[","color":"gold"},{"text":"!","bold":true,"color":"light_purple"},{"text":"] ","color":"gold"},{"text":"DEBUG:","color":"green"},{"text":" Checkpoint","color":"gold"},{"text":" rotation set!","color":"white"}]