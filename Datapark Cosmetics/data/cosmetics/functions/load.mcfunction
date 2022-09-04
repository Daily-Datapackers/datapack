# ⚠️ DON'T MODIFY THIS FILE OR YOU MIGHT BREAK STUFF ⚠️

# Stores the id of players
scoreboard objectives add player.id dummy

# Stores the id of the cosmetic entity (aec)
scoreboard objectives add c.id dummy

# Used to store stuff that doesn't need to be stored individually in entities in %fakeplayers
scoreboard objectives add c.cosmetics dummy
scoreboard players add %rotation c.cosmetics 0

# Used to detect when somebody joins
scoreboard objectives add hub.rejoin minecraft.custom:leave_game 
#summons rotating marker
execute unless entity @e[type=marker,tag=c.rotate] run summon marker ~ ~ ~ {Tags:["c.rotate"]}
