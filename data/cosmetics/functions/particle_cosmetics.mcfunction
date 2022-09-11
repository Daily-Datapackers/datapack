#Detect when you have a particle trail equipped, and then do the particles
execute if entity @s[scores={c.equipped_cosmetic=1}] positioned ~ ~0.1 ~ rotated as @e[type=marker,tag=c.rotate] run function cosmetics:flame_ring/main
execute if entity @s[scores={c.equipped_cosmetic=1019}] run function cosmetics:raincloud/main
execute if entity @s[scores={c.equipped_cosmetic=1022}] run function cosmetics:wet/main
execute if entity @s[scores={c.equipped_cosmetic=1021}] run function cosmetics:sculk_charge/main
execute if entity @s[scores={c.equipped_cosmetic=1020}] run function cosmetics:rich_rain/main
execute if entity @s[scores={c.equipped_cosmetic=1018}] run function cosmetics:rainbow_force/main
execute if entity @s[scores={c.equipped_cosmetic=1016}] run function cosmetics:note/main
execute if entity @s[scores={c.equipped_cosmetic=1013}] run function cosmetics:garden/main
execute if entity @s[scores={c.equipped_cosmetic=1015}] run function cosmetics:magic/main
execute if entity @s[scores={c.equipped_cosmetic=1012}] run function cosmetics:freezing/main
execute if entity @s[scores={c.equipped_cosmetic=1009}] run function cosmetics:ender_spark/main
execute if entity @s[scores={c.equipped_cosmetic=1008}] run function cosmetics:emerald/main
execute if entity @s[scores={c.equipped_cosmetic=1007}] run function cosmetics:electric_shock/main
execute if entity @s[scores={c.equipped_cosmetic=1006}] run function cosmetics:dust/main
execute if entity @s[scores={c.equipped_cosmetic=1005}] run function cosmetics:death/main
execute if entity @s[scores={c.equipped_cosmetic=1004}] run function cosmetics:candy/main
execute if entity @s[scores={c.equipped_cosmetic=1001}] at @s run function cosmetics:alchemist_circle/main
execute if entity @s[scores={c.equipped_cosmetic=1003}] positioned ~ ~0.1 ~ rotated as @e[type=marker,tag=c.rotate] run function cosmetics:burning_circle/main
execute if entity @s[scores={c.equipped_cosmetic=1011}] positioned ~ ~0.1 ~ rotated as @e[type=marker,tag=c.rotate] run function cosmetics:flaming_tornado/main
execute if entity @s[scores={c.equipped_cosmetic=1002}] positioned ~ ~0.1 ~ rotated as @e[type=marker,tag=c.rotate] run function cosmetics:black_fires/main
execute if entity @s[scores={c.equipped_cosmetic=1010}] positioned ~ ~0.1 ~ rotated as @e[type=marker,tag=c.rotate] run function cosmetics:firework/main
execute if entity @s[scores={c.equipped_cosmetic=1014}] positioned ~ ~0.1 ~ rotated as @e[type=marker,tag=c.rotate] run function cosmetics:hearts/main
execute if entity @s[scores={c.equipped_cosmetic=1017}] positioned ~ ~0.1 ~ rotated as @e[type=marker,tag=c.rotate] run function cosmetics:portal/main

