execute unless entity @s[tag=mod.modmode] run scoreboard players set .modmode mod.math 0
execute if entity @s[tag=mod.modmode] run scoreboard players set .modmode mod.math 1

execute if score .modmode mod.math matches 1 run function mod:zpriv/triggers/modmode/disable
execute if score .modmode mod.math matches 0 run function mod:zpriv/triggers/modmode/enable