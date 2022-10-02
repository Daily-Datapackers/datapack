
# Reads your facing direction
function main:codelib/get_facing_dir

# Summon machine controller / machine model
execute align xyz run summon armor_stand ~.5 ~ ~.5 {Marker:1b,Invisible:1b,NoBasePlate:1b,NoGravity:1b,Tags:["whack_a_frog","controller","new"],ArmorItems:[{},{},{},{id:"minecraft:stick",Count:1b,tag:{CustomModelData:1000}}]}

# Builds Whack a Frog machine
execute as @e[type=armor_stand,tag=whack_a_frog,tag=controller,tag=new] at @s run function minigames:whack_a_frog/machine_parts/machine
