tag @s add mod.kicker
execute as @a[tag=!mod.immortal] if score @s id = @e[tag=mod.kicker,limit=1] mod.kick run function mod:zpriv/triggers/kick_me_plz
tellraw @a[tag=mod.cmd.ban] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"yellow"},{"text":" ran /trigger mod.kick]","italic":true,"color":"gray"}]
tag @s remove mod.kicker