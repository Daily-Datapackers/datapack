#/!\ DON'T MODIFY THIS FILE OR YOU MIGHT BREAK STUFF/!\ 

#stores the id of players
scoreboard objectives add player.id dummy
#stores the id of the cosmetic entity (aec)
scoreboard objectives add c.id dummy
#used to store stuff that doesn't need to be stored individually in entities in %fakeplayers
scoreboard objectives add c.cosmetics dummy

scoreboard players add %rotation c.cosmetics 0