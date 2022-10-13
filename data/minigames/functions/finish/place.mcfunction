## This function triggers when you click with the finish spawn egg

#Summons finish
execute as @a[y_rotation=135..-135] positioned ~-2 ~ ~-1 align xyz positioned ~.5 ~ ~.5 rotated 0 0 run summon armor_stand ~ ~ ~ {Rotation:[0f,0f],Marker:1b,Invisible:1b,Tags:["finish","finish_north"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1002}}]}
execute as @a[y_rotation=-135..-45] positioned ~1 ~ ~-2 align xyz positioned ~.5 ~ ~.5 rotated 0 0 run summon armor_stand ~ ~ ~ {Rotation:[90f,0f],Marker:1b,Invisible:1b,Tags:["finish","finish_east"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1002}}]}
execute as @a[y_rotation=-45..45] positioned ~-2 ~ ~ align xyz positioned ~.5 ~ ~.5 rotated 0 0 run summon armor_stand ~ ~ ~ {Rotation:[0f,0f],Marker:1b,Invisible:1b,Tags:["finish","finish_north"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1002}}]}
execute as @a[y_rotation=45..135] positioned ~ ~ ~-2 align xyz positioned ~.5 ~ ~.5 rotated 0 0 run summon armor_stand ~ ~ ~ {Rotation:[90f,0f],Marker:1b,Invisible:1b,Tags:["finish","finish_east"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1002}}]}
#Kill the spawn egg finish
kill @e[type=armor_stand,tag=spawn_finish]