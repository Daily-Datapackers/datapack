scoreboard players reset .ban mod.math
tag @s add mod.banner
execute as @a[tag=!mod.immortal] if score @s id = @e[tag=mod.mod.banner,limit=1] mod.ban run function mod:zpriv/triggers/ban_me_plz
tag @s remove mod.banner
tellraw @a[tag=mod.cmd.ban] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"yellow"},{"text":" ran /trigger mod.ban]","italic":true,"color":"gray"}]

execute unless score .ban mod.math matches 1 run function mod:zpriv/triggers/ban/fallback