
# Minigames timer
scoreboard objectives add minigames.timer1 dummy
scoreboard objectives add minigames.timer2 dummy
scoreboard objectives add minigames.timer3 dummy
scoreboard objectives add minigames.timer4 dummy
scoreboard objectives add minigames.timer5 dummy

### For Whack a Frog
scoreboard objectives add whack_a_frog.id dummy

### For Parkour
# ID for the different parkour
scoreboard objectives add parkour.id dummy

# ID for the special blocks
scoreboard objectives add parkour.block_id dummy

# Activation state of a block
scoreboard objectives add parkour.active dummy
scoreboard objectives add parkour.toggle dummy

# Remove forgotten and unused markers
function minigames:parkour/remove_unused_marker

# Deselect all selected parkour blocks
schedule clear tools:parkour/block_selector/selection_particles

### For Don't Stop Running
gamerule doImmediateRespawn true
