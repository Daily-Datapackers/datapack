# ⚠️ DON'T MODIFY THIS FILE OR YOU MIGHT BREAK STUFF ⚠️

# Increases the highest ID by one
scoreboard players add %max player.id 1
# Copies the player ID from the highest id
scoreboard players operation @s player.id = %max player.id
# Sends a debug message to setup players
tellraw @s ["",{"text":"[COSMETIC DEBUG] You have been setup with the id of ","color":"green"},{"score":{"name":"@s","objective":"player.id"},"color":"yellow"},{"text":"!","color":"green"}]