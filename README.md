# `Datapark Datapack`
     
##  EXPLANATION

###  CodeLib
  In the folder "main" ther is a subfolder called "codelib". In this folder you can put functions that can be used multiple times like "rng.mcfunction" (a random number generator). If you create a new one please put an explanation of how to use it in this list.

 `get_facing_dir.mcfunction` reads the executers rotation and outputs the cardinal direction it's facing the closets as a number in the scoreboard `dir` `temp`

 `rng.mcfunction` generates a random number from a given range (only positive numbers). To set the range you have to set the fake players `max` and `min` in the scoreboard `temp` to the numbers you need

###  Scoreboards
 There are currently 6 freely usable scoreboards:
 
 `player.id` is the id of the _player_, players get a unique id assigned as soon as they join the world!
 
 `temp` is a temporary storage for scores. Temporary means that the scores will be used in the same function or tick at least. If you need to store the score longer than that you should use another unique scoreboard

 `timer<number>` is a timer if you need a timer more just add one in "main:load.mcfunction". Please keep the timer name format the same: the word timer with a number directly attached

 `c.id` is the id of the _cosmetic entity_ (aec, ridden by armor stand), the ce automatically gets the same id assigned the player that spawned it had too
 
 `c.cosmetics` can be used for everything that doesn't require to be assigned to specific entities (ex. countdowns) and can use `fakeplayers`, currently only used by `%rotation`
 
 ### Entities
 The pack currently only uses 2 entities, an aec with the tag `"c.cosmeticentity"` and an armor stand with the `"c.cosmeticarmorstand"` tag

 ### Player Tags
 There are multiple tags for players and you might have to add your own when adding new cosmetics
 
 `c.requires_ce` = given to players that require a cosmetic entity, used to detect if the player already has an assigned cosmetic entity when equipping a new cosmetic
 
 `c.has.cosmetic` = must be given to all players that have a cosmetic equipped
 
 `c.<cosmetic_name>` = replace `<cosmetic_name>` with the name of your cosmetic, used to detect which cosmetic is currently equipped
 
___
 
## ADDING NEW COSMETICS (ONLY IN COSMETICS FOLDER)
### For Cosmetics that require an entity:
 
In "tick.mcfunction" add
```mcfunction
execute as @e[type=armor_stand,tag=c.<c.cosmetic_name>] at @s run function cosmetic:<cosmetic_name>/main
```
In "actually_link.mcfunction" add
```mcfunction
execute if entity @s[tag=c.<cosmetic_name>] run tag @e[type=armor_stand,tag=c.cosmeticarmorstand,limit=1] add <c.cosmetic_name>
```
Make a new folder and give it the name of your cosmetic
In that folder add:
  `unequip.mcfunction`,
 
  `equip.mcfunction`,
 
  `main.mcfunction`,
 
  `add_custom_model.mcfunction`
 
In "unequip.mcfunction" put:
```mcfunction
tag @s remove c.requires_ce 
tag @s remove c.<cosmetic_name>
tag @s remove c.has_cosmetic
```
     
In "equip.mcfunction" put:
```mcfunction
execute if entity @s[tag=c.has_cosmetic] run tellraw @s {"text":"You already have a cosmetic equipped!","color":"red"}
execute unless entity @s[tag=c.requires_ce] run function cosmetics:summon_ce
execute unless entity @s[tag=c.has_cosmetic] run tag @s add c.<cosmetic_name>
execute unless entity @s[tag=c.has_cosmetic] run tag @s add c.requires_ce
execute unless entity @s[tag=c.has_cosmetic] run tag @s add c.has_cosmetic
```
 
In "main.mcfunction" put:
```mcfunction
execute unless entity @s[tag=c.custom_model] run function cosmetics:<cosmetic_name>/add_custom_model
```
Aside from that you can put pretty much whatever you want here but keep in mind that all commands in this function are run AS and AT the cosmetic armor stand

In "add_custom_model.mcfunction" put: 
```mcfunction
item replace entity @s armor.head with jigsaw{CustomModelData:1000}
# before you use any number make sure that it isn't used in this file: https://github.com/Daily-Datapackers/resources/blob/main/resourcepack/assets/minecraft/models/item/jigsaw.json
tag @s add c.custom_model
```
 
### For cosmetics that don’t require an entity:

In "particle_cosmetics.mcfunction" add
```mcfunction
execute if @s[tag=c.<c.cosmetic_name>] run function cosmetic:<cosmetic_name>/main
```

Make a new folder and give it the name of your cosmetic
In that folder add:

  `unequip.mcfunction`,
 
  `equip.mcfunction`,
 
  `main.mcfunction`
 
 In "unequip.mcfunction" put:
```mcfunction
tag @s remove c.has_cosmetic
tag @s remove c.particle_cosmetic
tag @s remove c.<cosmetic_name>
```

In "equip.mcfunction" put:
```mcfunction
execute if entity @s[tag=c.has_cosmetic] run tellraw @s {"text":"You already have a cosmetic equipped!","color":"red"}
execute unless entity @s[tag=c.has_cosmetic] run tag @s add c.<cosmetic_name>
execute unless entity @s[tag=c.has_cosmetic] run tag @s add c.particle_cosmetic
execute unless entity @s[tag=c.has_cosmetic] run tag @s add c.has_cosmetic
```

Put your particle commands in "main.mcfunction", these will be run AS and AT the player.
If you want your particles to rotate execute them `rotated as @e[type=marker,tag=c.rotator]`!


## Minigames
Only execute functions with an underscore at the beginning.

`Whack a Frog`: You can build the mashine using the command "function minigames:whack_a_frog/_build_mashine" and remove the nearest one with "function minigames:whack_a_frog/_remove_nearest_mashine"



