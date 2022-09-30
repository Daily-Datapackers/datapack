
# Spawns start button
summon villager ~ ~-1.2 ~ {NoGravity:0b,Silent:1b,Invulnerable:1b,NoAI:1b,CanPickUpLoot:0b,Tags:["whack_a_frog","start_button"],CustomName:'{"text":"Start Game","color":"green"}',ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1001}}],Offers:{}}

# Summon whack frogs
summon frog ^ ^ ^ {NoAI:1b,Health:1000000f,Variant:"minecraft:temperate",Tags:["whack_a_frog","frog"],Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1000000}]}
summon frog ^.75 ^ ^ {NoAI:1b,Health:1000000f,Variant:"minecraft:temperate",Tags:["whack_a_frog","frog"],Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1000000}]}
summon frog ^-.75 ^ ^ {NoAI:1b,Health:1000000f,Variant:"minecraft:temperate",Tags:["whack_a_frog","frog"],Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1000000}]}
summon frog ^ ^ ^.75 {NoAI:1b,Health:1000000f,Variant:"minecraft:temperate",Tags:["whack_a_frog","frog"],Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1000000}]}
summon frog ^ ^ ^-.75 {NoAI:1b,Health:1000000f,Variant:"minecraft:temperate",Tags:["whack_a_frog","frog"],Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1000000}]}
summon frog ^.75 ^ ^.75 {NoAI:1b,Health:1000000f,Variant:"minecraft:temperate",Tags:["whack_a_frog","frog"],Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1000000}]}
summon frog ^-.75 ^ ^-.75 {NoAI:1b,Health:1000000f,Variant:"minecraft:temperate",Tags:["whack_a_frog","frog"],Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1000000}]}
summon frog ^.75 ^ ^-.75 {NoAI:1b,Health:1000000f,Variant:"minecraft:temperate",Tags:["whack_a_frog","frog"],Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1000000}]}
summon frog ^-.75 ^ ^.75 {NoAI:1b,Health:1000000f,Variant:"minecraft:temperate",Tags:["whack_a_frog","frog"],Silent:1b,Attributes:[{Name:"minecraft:generic.max_health",Base:1000000}]}

# Gives every frog an ID
execute positioned ~-1 ~ ~-1 as @e[type=frog,tag=whack_a_frog,tag=frog,dx=2,dz=2] unless entity @s[scores={entity_id=1..}] run function minigames:whack_a_frog/machine_parts/setup_frogs
