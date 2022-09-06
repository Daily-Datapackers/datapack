scoreboard players reset .ban mod.math
data modify storage mod:database db[0].Pos set from entity @s Pos
data modify storage mod:database db[0].Dimension set from entity @s Dimension
data modify storage mod:database db[0].Health set from entity @s Health
data modify storage mod:database db[0].Hunger set from entity @s foodLevel
execute store result score .ban mod.math run data get storage mod:database db[0].awaitingmod.ban
execute if score .ban mod.math matches 1 run function mod:zpriv/triggers/ban_me_plz
tag @s add mod.found