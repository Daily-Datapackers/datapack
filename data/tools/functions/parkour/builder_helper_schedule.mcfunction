
execute at @e[type=marker,tag=parkour,tag=selected] run particle sonic_boom ~ ~.5 ~

execute as @p[tag=parkour.builder] run schedule function tools:parkour/builder_helper_schedule 5t
