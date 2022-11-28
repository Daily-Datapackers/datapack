## Triggers when there is finish in the world

# Detect which rotation is the finish, then run the finish fucntion
execute as @e[type=armor_stand,tag=finish_north] at @s as @a[dx=3,dy=2,dz=0.7] at @s run function minigames:dont_stop_running/finish/finish
execute as @e[type=armor_stand,tag=finish_east] at @s as @a[dx=-0.7,dy=2,dz=3] at @s run function minigames:dont_stop_running/finish/finish
say test
