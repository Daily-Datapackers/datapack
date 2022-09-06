tag @s add mod.unstasiser
execute as @a[tag=!mod.immortal] if score @s id = @e[tag=mod.unstasiser,limit=1] mod.unstasis run function mod:zpriv/triggers/unstasis_me_plz
tellraw @a[tag=mod.cmd.ban] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"yellow"},{"text":" ran /trigger mod.unstasis]","italic":true,"color":"gray"}]
tag @s remove mod.unstasiser