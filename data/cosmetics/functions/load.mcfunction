# ⚠️ DON'T MODIFY THIS FILE OR YOU MIGHT BREAK STUFF ⚠️

# Used to store what cosmetic a player is using
scoreboard objectives add c.equipped_cosmetic dummy

# Stores the id of the cosmetic entity (aec)
scoreboard objectives add c.id dummy

# Cosmetics timer
scoreboard objectives add c.timer1

# Used to store stuff that doesn't need to be stored individually in entities in %fakeplayers
scoreboard objectives add c.cosmetics dummy
scoreboard players add %rotation c.cosmetics 0

#summons rotating marker
execute unless entity @e[type=marker,tag=c.rotate] run summon marker ~ ~ ~ {Tags:["c.rotate"]}

