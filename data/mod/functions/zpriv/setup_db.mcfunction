loot replace entity @s armor.head loot mod:head
data modify storage mod:database newUser.Username set from entity @s Inventory[{Slot:103b}].tag.SkullOwner.Name
item replace entity @s armor.head with air

data modify storage mod:database newUser.Dimension set from entity @s Dimension
data modify storage mod:database newUser.Health set from entity @s Health
data modify storage mod:database newUser.Hunger set from entity @s foodLevel
data modify storage mod:database newUser.Pos set from entity @s Pos

execute store result storage mod:database newUser.ID int 1 run scoreboard players get @s id

data modify storage mod:database db append from storage mod:database newUser