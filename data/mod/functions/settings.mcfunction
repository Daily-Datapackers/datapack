# This file defines who can run what commands in this pack.

# Any user with the correct tags can run the relative command. 
# For example, a user with the tag mod.cmd.mod.ban can run /trigger mod.ban

# This is the pack's settings file. Feel free to modify this as much as you want. 

# DEFAULTS:
# Any user on the team "Owner" or "Admin" can run any command
# Any user on the team "Moderator" can run moderation commands 
# Any user on the team "Helper" can run basic moderation commands (tp, viewreports)
# Any user on the team "Youtuber" can run all public commands as well as /trigger glow
# Any user can run public commands (/trigger report)

tag @a[team=Admin] add mod.cmd.ban
tag @a[team=Owner] add mod.cmd.ban
tag @a[team=Moderator] add mod.cmd.ban

tag @a[team=Admin] add mod.cmd.kick
tag @a[team=Owner] add mod.cmd.kick
tag @a[team=Moderator] add mod.cmd.kick

tag @a[team=Admin] add mod.cmd.tp
tag @a[team=Owner] add mod.cmd.tp
tag @a[team=Helper] add mod.cmd.tp
tag @a[team=Moderator] add mod.cmd.tp

tag @a[team=Admin] add mod.moderator
tag @a[team=Owner] add mod.moderator
tag @a[team=Helper] add mod.moderator
tag @a[team=Moderator] add mod.moderator

tag @a[team=Admin] add mod.cmd.playerinfo
tag @a[team=Owner] add mod.cmd.playerinfo
tag @a[team=Helper] add mod.cmd.playerinfo
tag @a[team=Moderator] add mod.cmd.playerinfo

tag @a[team=Admin] add mod.cmd.stasis
tag @a[team=Owner] add mod.cmd.stasis
tag @a[team=Moderator] add mod.cmd.stasis

tag @a[team=Admin] add mod.cmd.glow
tag @a[team=Owner] add mod.cmd.glow
tag @a[team=Youtuber] add mod.cmd.glow
tag @a[team=Helper] add mod.cmd.glow
tag @a[team=Moderator] add mod.cmd.glow

tag @a[team=Admin] add mod.cmd.viewreports
tag @a[team=Owner] add mod.cmd.viewreports
tag @a[team=Helper] add mod.cmd.viewreports
tag @a[team=Moderator] add mod.cmd.viewreports

tag @a add mod.cmd.report

# Run this repeatedly (recommended to not change this)
schedule function mod:settings 5s