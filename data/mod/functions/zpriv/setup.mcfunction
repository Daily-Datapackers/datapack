scoreboard players add .max id 1
scoreboard players operation @s id = .max id
gamerule commandBlockOutput false

function mod:zpriv/setup_db

tellraw @s {"text": "Welcome to <insert server name here -> zpriv/setup.mcfunction>! You have been fully set up, enjoy :D","color": "gold"}