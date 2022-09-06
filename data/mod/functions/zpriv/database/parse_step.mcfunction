scoreboard players remove .counter mod.math 1
scoreboard players reset .current mod.math

# At this line we can do with the element whatever we want, print it, check it, modify and more by using:
# data get storage mod:database db[0]
execute store result score .current mod.math run data get storage mod:database db[0].ID
execute as @a if score @s id = .current mod.math run function mod:zpriv/database/update_stats

data modify storage mod:database db append from storage mod:database db[0]
data remove storage mod:database db[0]

execute if score .counter mod.math matches 1.. run function mod:zpriv/database/parse_step