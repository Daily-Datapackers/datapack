
execute at @e[type=marker,tag=parkour,tag=selected] run particle sonic_boom ~ ~.5 ~
execute at @e[type=marker,tag=parkour,tag=selected,tag=trigger_block] run particle block_marker redstone_block ~ ~.5 ~

schedule function tools:parkour/block_selector/selection_particles 5t replace
