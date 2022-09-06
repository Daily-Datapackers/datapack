scoreboard players reset .target mod.math
scoreboard players operation .target mod.math = @s mod.playerinfo
data remove storage mod:database TargetedPlayerInfo
function mod:zpriv/database/get_player_info/parse
tellraw @a[tag=mod.cmd.ban] ["",{"text":"[","italic":true,"color":"gray"},{"selector":"@s","italic":true,"color":"yellow"},{"text":" ran /trigger mod.mod.playerinfo]","italic":true,"color":"gray"}]

execute unless data storage mod:database TargetedPlayerInfo run tellraw @s {"text": "No player with this ID has ever joined the server before!","color": "red"}
execute if data storage mod:database TargetedPlayerInfo run function mod:zpriv/triggers/playerinfo/does_exist