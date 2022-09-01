# <Unnamed Project> Cosmetics
     
##  EXPLANATION
 
###  Scoreboards
 There currently are 3 scoreboards which 1 of will probably be used for other stuff too but I will still explain them:
 player.id = the id of the player, players get a unique id assigned as soon as they join the world!
 c.id = the id of the cosmetic entity (aec, ridden by armor stand), the ce automatically gets the same id assigned the player that spawned it   had too
 c.cosmetics = can be used for everything that doesn't require to be assigned to specific entities (ex. countdowns) and can use fakeplayers
 currently only used by %rotation
 ### Entities
 The pack currently only uses 2 entities, an aec with the tag "c.cosmeticentity" and an armorstand with the "c.cosmeticarmorstand" tag
 ### Player Tags
 There are multiple tags for players and you might have to add your own when adding new cosmetics
 c.requires.ce = given to players that require a cosmetic entity, used to detect if the player already has an assigned cosmetic entity when    equipping a new cosmetic
 c.has.cosmetic = must be given to all players that have a cosmetic equipped
 c.<cosmetic_name> = replace <cosmetic_name> with the name of your cosmetic, used to detect which cosmetic is currently equipped
 
## ADDING NEW COSMETICS
### For Cosmetics that require an entity:
 
In "tick.mcfunction" add
```mcfunction
execute as @e[type=armor_stand,tag=c.<c.cosmetic_name>] at @s run function cosmetic:<cosmetic_name>/main
```
In "actually_link.mcfunction" add
```mcfunction
execute if entity @s[tag=c.<cosmetic_name>] run tag @e[type=armor_stand,tag=c.cosmeticarmorstand,limit=1] add c.<c.cosmetic_name>
```
Make a new folder and give it the name of your cosmetic
In that folder add
  "unequip.mcfunction"
  "equip.mcfunction"
  and "main.mcfunction"
 
In "unequip.mcfunction" put:
```mcfunction
tag @s remove c.requires_ce <- only add this if your cosmetic requires and cosmetic entity
tag @s remove c.<cosmetic_name>
tag @s remove c.has_cosmetic
```
     
In "equip.mcfunction" put:
```mcfunction
execute unless entity @s[tag=c.requires.ce] run function cosmetics:summon_ce <- only add this if your cosmetic requires and cosmetic entit
tag @s add c.requires_ce <- only add this if your cosmetic requires and cosmetic entit
tag @s add c.<cosmetic_name>
tag @s add c.has_cosmetic
```
 
In "main.mcfunction" put:
You can put pretty much whatever you want here but keep in mind that all commands in this function are run AS and AT the cosmetic armorstand if you have one
 
 
### For cosmetics that don’t require an entity:
It should work the same for everything that is in the folder, don’t paste the things marked not to put there in there tho
 
The only other thing you need to do is add this to "tick.mcfunction"
```mcfunction
execute as @a[tag=c.<cosmetic_name>] at @s run function cosmetic:<cosmetic_name>/main
````
