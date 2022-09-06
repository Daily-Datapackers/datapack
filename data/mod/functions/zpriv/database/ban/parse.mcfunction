execute store result score .counter mod.math run data get storage mod:database db
execute if score .counter mod.math matches 1.. run function mod:zpriv/database/mod.ban/parse_step

execute unless score .mod.ban mod.math matches 1 run function mod:zpriv/triggers/mod.ban/does_not_exist