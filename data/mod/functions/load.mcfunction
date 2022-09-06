scoreboard objectives add initcheck dummy
execute store success score .check initcheck run scoreboard objectives add id dummy
execute if score .check initcheck matches 1 run scoreboard players set .max id 0
scoreboard objectives remove initcheck

scoreboard objectives add id dummy
scoreboard objectives add mod.math dummy

scoreboard objectives add mod.glowcheck dummy

# Modmode
scoreboard objectives add mod.modmode trigger

# Player Info - Gets information about any player
scoreboard objectives add mod.playerinfo trigger

# Stasis - Prevents movement
scoreboard objectives add mod.stasis trigger
scoreboard objectives add mod.unstasis trigger

#scoreboard objectives add help trigger

# Glow - Makes you glow
scoreboard objectives add mod.glow trigger

# mod.ban - mod.bans a user
scoreboard objectives add mod.ban trigger

# Tp - Teleports to a user
scoreboard objectives add mod.tp trigger

# Kick - Kicks a user
scoreboard objectives add mod.kick trigger

# Report - Reports a user for breaking rules
scoreboard objectives add report trigger

# Confirm Report - Sends a report
scoreboard objectives add report.confirm trigger

# View Reports - View the reports in order
scoreboard objectives add mod.viewreports trigger

# mod.zmod - Ignore this, you don't need (and shouldn't try) to run it
scoreboard objectives add mod.zmod trigger

schedule function mod:settings 5s
function mod:zpriv/update_db