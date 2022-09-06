scoreboard players remove .counter mod.math 1

# At this line we can do with the element whatever we want, print it, check it, modify and more by using:
# data get storage mod:database db[0]
execute store result score .current mod.math run data get storage mod:database db[0].ID
execute if score .current mod.math = .target mod.math run function mod:zpriv/database/get_player_info/save_target

data modify storage mod:database db append from storage mod:database db[0]
data remove storage mod:database db[0]

execute if score .counter mod.math matches 1.. run function mod:zpriv/database/get_player_info/parse_step