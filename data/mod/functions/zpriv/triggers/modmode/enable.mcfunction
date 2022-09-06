gamemode spectator
tag @s add mod.modmode
tellraw @a[tag=mod.moderator] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"yellow"},{"text":" modmoded]","italic":true,"color":"gray"}]
scoreboard players set .onlinestaff mod.math 0
execute as @a[tag=mod.moderator] run scoreboard players add .onlinestaff mod.math 1

execute store result score .unhandledReports mod.math run data get storage mod:reports Reports

tellraw @s ["",{"text":"-- ","bold":true,"color":"gold"},{"text":"Moderation Console","bold":true,"color":"aqua"},{"text":" --","color":"gold"},{"text":"\n"},{"text":"Online Staff: ","color":"yellow"},{"score":{"name": ".onlinestaff","objective": "mod.math"},"color": "gold"},{"text":"\n"},{"text":"Unhandled Reports: ","color":"yellow"},{"score":{"name": ".unhandledReports","objective": "mod.math"},"color":"gold"},{"text":"\n"},{"text":"-- Actions --","bold":true,"color":"gold"},{"text":"\n"},{"text":"[View Recent Report]","color":"dark_aqua","clickEvent":{"action":"run_command","value":"/trigger mod.viewreports"}},{"text":"\n"},{"text":"[TP To Random Player]","color":"light_purple","clickEvent":{"action":"run_command","value":"/trigger mod.zmod set 43"}},{"text":"\n"},{"text":"[Leave Moderator Mode]","color":"red","clickEvent":{"action":"run_command","value":"/trigger mod.modmode"}},{"text":"\n"},{"text":"-- Moderation Console --","bold":true,"color":"gold"}]