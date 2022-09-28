
execute as @a[tag=in_trigger_block] at @s unless block ~.5 ~ ~.5 light[level=1] unless block ~-.5 ~ ~-.5 light[level=1] unless block ~.5 ~ ~-.5 light[level=1] unless block ~-.5 ~ ~.5 light[level=1] unless entity @e[type=marker,tag=parkour,tag=trigger_block,dx=0] run function minigames:parkour/special_blocks/trigger_block/revoke_trigger

execute as @p[tag=in_trigger_block] run schedule function minigames:parkour/special_blocks/trigger_block/revoke_trigger_check 1t replace
