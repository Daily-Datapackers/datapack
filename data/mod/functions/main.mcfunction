# First Time Setup

# Enable scoreboards 
scoreboard players enable @a[tag=mod.moderator] mod.modmode
scoreboard players enable @a[tag=mod.cmd.ban] mod.ban
scoreboard players enable @a[tag=mod.cmd.tp] mod.tp
scoreboard players enable @a[tag=mod.cmd.playerinfo] mod.playerinfo
scoreboard players enable @a[tag=mod.cmd.kick] mod.kick
scoreboard players enable @a[tag=mod.cmd.viewreports] mod.viewreports
scoreboard players enable @a[tag=mod.cmd.viewreports] mod.zmod
scoreboard players enable @a[tag=mod.cmd.report] report
scoreboard players enable @a[tag=mod.cmd.glow] mod.glow
scoreboard players enable @a[tag=mod.cmd.stasis] mod.stasis
scoreboard players enable @a[tag=mod.cmd.stasis] mod.unstasis

# Modmode stuff
execute as @a[scores={mod.modmode=1..},tag=mod.moderator] at @s run function mod:zpriv/triggers/modmode
execute as @a[scores={mod.modmode=1..},tag=!mod.moderator] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a mod.modmode 0

# Commands management
execute as @a[scores={mod.playerinfo=1..},tag=mod.cmd.playerinfo] at @s run function mod:zpriv/triggers/playerinfo
execute as @a[scores={mod.playerinfo=1..},tag=!mod.cmd.playerinfo] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a mod.playerinfo 0


execute as @a[scores={mod.ban=1..},tag=mod.cmd.ban] at @s run function mod:zpriv/triggers/ban
execute as @a[scores={mod.ban=1..},tag=!mod.cmd.ban] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a mod.ban 0

execute as @a[scores={mod.tp=1..},tag=mod.cmd.mod.tp] at @s run function mod:zpriv/triggers/tp
execute as @a[scores={mod.tp=1..},tag=!mod.cmd.tp] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a mod.tp 0

execute as @a[scores={mod.kick=1..},tag=mod.cmd.kick] at @s run function mod:zpriv/triggers/kick
execute as @a[scores={mod.kick=1..},tag=!mod.cmd.tp] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a mod.kick 0

execute as @a[scores={mod.viewreports=1..},tag=mod.cmd.viewreports] at @s run function mod:zpriv/triggers/viewreports
execute as @a[scores={mod.viewreports=1..},tag=!mod.cmd.viewreports] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a mod.viewreports 0

execute as @a[scores={report=1..},tag=mod.cmd.report] at @s run function mod:zpriv/triggers/report
execute as @a[scores={viewreports=1..},tag=!mod.cmd.report] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a report 0

scoreboard players enable @a[tag=mod.cmd.viewreports] mod.zmod
execute as @a[scores={mod.zmod=1..}] at @s run function mod:zpriv/staffaction/base
scoreboard players set @a mod.zmod 0

execute as @a[scores={report.confirm=1..},tag=mod.cmd.report] at @s run function mod:zpriv/triggers/report_confirm
scoreboard players set @a report.confirm 0

execute as @a[scores={mod.glow=1..},tag=mod.cmd.glow] at @s run function mod:zpriv/triggers/glow
execute as @a[scores={mod.glow=1..},tag=!mod.cmd.glow] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a mod.glow 0

execute as @a[scores={mod.stasis=1..},tag=mod.cmd.stasis] at @s run function mod:zpriv/triggers/stasis
execute as @a[scores={mod.stasis=1..},tag=!mod.cmd.stasis] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a mod.stasis 0

execute as @a[scores={mod.unstasis=1..},tag=mod.cmd.stasis] at @s run function mod:zpriv/triggers/unstasis
execute as @a[scores={mod.unstasis=1..},tag=!mod.cmd.stasis] at @s run tellraw @s {"text": "You do not have permission to do this :(","color": "red"}
scoreboard players set @a mod.unstasis 0

execute as @a[tag=mod.stasis] at @s run tp @s @e[tag=mod.stasis_marker_1,limit=1,sort=nearest]
execute as @a[tag=mod.stasis] at @s run tp @s ~ ~ ~ facing entity @e[tag=mod.stasis_marker_2,limit=1,sort=nearest]