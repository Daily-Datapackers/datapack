scoreboard players remove .counter mod.math 1
scoreboard players reset .current mod.math

execute store result score .current mod.math run data get storage mod:database db[0].ID
execute if score .current mod.math = .target mod.math run function mod:zpriv/database/ban/ban

data modify storage mod:database db append from storage mod:database db[0]
data remove storage mod:database db[0]

execute if score .counter mod.math matches 1.. run function mod:zpriv/database/ban/parse_step