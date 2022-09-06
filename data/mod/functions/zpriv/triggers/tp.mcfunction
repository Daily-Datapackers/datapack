tag @s add mod.tper
execute as @a[tag=!mod.immortal,tag=!mod.tper] if score @s id = @a[tag=mod.tper,limit=1] mod.tp at @s run tp @a[tag=mod.tper] @s
tellraw @a[tag=mod.cmd.ban] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"yellow"},{"text":" ran /trigger mod.tp]","italic":true,"color":"gray"}]
tag @s remove mod.tper