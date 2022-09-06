data modify storage mod:database db[0].awaitingban set value 1b
tellraw @s {"text": "User was not found online, however this was logged in the database. The next time they join, they will be instantly banned","color": "green"}
scoreboard players set .ban mod.math 1