tag @s add mod.stasiser
execute as @a[tag=!mod.immortal] if score @s id = @e[tag=mod.stasiser,limit=1] mod.stasis at @s run function mod:zpriv/triggers/stasis_me_plz
tellraw @a[tag=mod.cmd.ban] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"yellow"},{"text":" ran /trigger mod.stasis]","italic":true,"color":"gray"}]
tag @s remove mod.stasiser