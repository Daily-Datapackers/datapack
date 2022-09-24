
execute at @e[type=marker,tag=parkour,tag=selected] run particle sonic_boom ~ ~.5 ~

execute as @p[tag=parkour.builder] run schedule function minigames:parkour/building_tools/builder_helper_schedule 5t
