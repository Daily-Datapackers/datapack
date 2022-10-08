###Checkpoint Setter - Main
#Activated when clicked with checkpoint setter

#Revoke Advancement
advancement revoke @s only tools:checkpoint_setter

##Main Functions
#Debug message - wasn't done correctly
execute unless entity @e[tag=checkpoint,limit=1,distance=..1] run tellraw @a ["",{"text":"[","color":"gold"},{"text":"!","bold":true,"color":"light_purple"},{"text":"] ","color":"gold"},{"text":"DEBUG:","color":"green"},{"text":" No ","color":"white"},{"text":"checkpoints","color":"gold"},{"text":" detected!","color":"white"},{"text":"\n"},{"text":"[","color":"gold"},{"text":"?","bold":true,"color":"light_purple"},{"text":"] ","color":"gold"},{"text":"POTENTIONAL FIX: ","color":"green"},{"text":"You need to be ","color":"white"},{"text":"standing","bold":true,"color":"aqua"},{"text":" on the ","color":"white"},{"text":"Pressure Plate","color":"gold","hoverEvent":{"action":"show_text","contents":["",{"text":"[","color":"gold"},{"text":"Checkpoint","color":"light_purple"},{"text":"]","color":"gold"}]}},{"text":"!","color":"white"},{"text":"\n "}]
#Give the marker rotation from the player
execute at @s if entity @e[tag=checkpoint,limit=1,distance=..1] at @s run data modify entity @e[type=marker,tag=checkpoint,distance=..1,limit=1] Rotation set from entity @s Rotation
#Give you the spawnpoint based on markers
execute if entity @e[tag=checkpoint,limit=1,distance=..1] at @s as @a[distance=..1] run function tools:dont_stop_running/checkpoint_setter/spawnpoint
