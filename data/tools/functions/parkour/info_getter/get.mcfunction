
advancement revoke @s only tools:info_getter

tellraw @s {"text":"===---","color":"blue"}
tellraw @s [{"text":"Is part of parkour: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"parkour.id"},"color":"green"}]
tellraw @s [{"text":"Block id: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"parkour.block_id"},"color":"green"}]
tellraw @s [{"text":"Main block material: ","color":"gray"},{"nbt":"data.BlockType[0]","entity":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","color":"green"}]
tellraw @s [{"text":"Secondary block material: ","color":"gray"},{"nbt":"data.BlockType[1]","entity":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","color":"green"}]
tellraw @s [{"text":"Block is active: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"parkour.active"},"color":"green"}]
tellraw @s [{"text":"Toggle state: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"parkour.toggle"},"color":"green"}]
tellraw @s [{"text":"Home position: ","color":"gray"},{"nbt":"data.Home[0]","entity":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","color":"green","extra":[{"text":" | ","color":"white"}]},{"nbt":"data.Home[1]","entity":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","color":"green","extra":[{"text":" | ","color":"white"}]},{"nbt":"data.Home[2]","entity":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","color":"green"}]
tellraw @s [{"text":"Timer starts at (t): ","color":"gray"},{"nbt":"data.TimerStart","entity":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","color":"green"}]
tellraw @s [{"text":"Timer ends at (t): ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"minigames.timer2"},"color":"green"}]
tellraw @s [{"text":"Misc timer: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"minigames.timer3"},"color":"green"}]
tellraw @s {"text":"===---","color":"blue"}
