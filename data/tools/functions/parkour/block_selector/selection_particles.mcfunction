
# Selected blocks make particles. And trigger blocks get a redstone block particle(because they are invisible)
execute at @e[type=marker,tag=parkour,tag=selected] run particle sonic_boom ~ ~.5 ~
execute at @e[type=marker,tag=parkour,tag=selected,tag=trigger_block] run particle block_marker redstone_block ~ ~.5 ~

# Repeats this function
schedule function tools:parkour/block_selector/selection_particles 5t replace
