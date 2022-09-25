
advancement revoke @s only tools:info_getter

tellraw @s {"text":"\n===---","color":"blue"}
tellraw @s [{"text":"Is part of parkour: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"parkour.id"},"color":"green"}]
tellraw @s [{"text":"Block id: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"parkour.block_id"},"color":"green"}]
tellraw @s [{"text":"Block is active: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"parkour.active"},"color":"green"}]
tellraw @s [{"text":"Toggle state: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"parkour.toggle"},"color":"green"}]
tellraw @s [{"text":"Timer starts at: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"minigames.timer1"},"color":"green"}]
tellraw @s [{"text":"Timer ends at: ","color":"gray"},{"score":{"name":"@e[type=marker,tag=parkour,tag=selected,tag=!multi,limit=1,sort=nearest]","objective":"minigames.timer2"},"color":"green"}]
tellraw @s {"text":"===---\n","color":"blue"}
