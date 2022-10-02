
# Stores the id of players
scoreboard objectives add player.id dummy

# Used to detect when somebody rejoins
scoreboard objectives add hub.rejoin minecraft.custom:leave_game 

# A scoreboard only for scores that aren't needed any more in the following tick
scoreboard objectives add temp dummy

# A scoreboard only used for setting the default scores of some things
scoreboard objectives add settings dummy
