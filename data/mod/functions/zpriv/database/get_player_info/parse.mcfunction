scoreboard players reset .counter mod.math
scoreboard players reset .current mod.math
execute store result score .counter mod.math run data get storage mod:database db
execute if score .counter mod.math matches 1.. run function mod:zpriv/database/get_player_info/parse_step