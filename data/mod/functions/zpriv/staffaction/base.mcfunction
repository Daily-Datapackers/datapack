execute if entity @s[tag=!mod.cmd.viewreports] run tellraw @s {"text": "You can't do this.","color": "red"}

execute if entity @s[tag=mod.cmd.viewreports] run function mod:zpriv/staffaction/cmd