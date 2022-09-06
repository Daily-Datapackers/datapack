execute store result score .counter mod.math run data get storage mod:database db
execute if score .counter mod.math matches 1.. run function mod:zpriv/database/parse_step
execute as @a[tag=!mod.found] at @s run function mod:zpriv/setup_db
tag @a remove mod.found