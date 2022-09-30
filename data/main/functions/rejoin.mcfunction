# TODO: Comment this code

scoreboard players reset @s hub.rejoin
advancement revoke @s only cosmetics:rejoin

execute if score @s c.equipped_cosmetic matches 10000.. run function cosmetics:summon_ce
