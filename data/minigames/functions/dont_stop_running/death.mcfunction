### This fucntion triggers when someone stops running in Dont Stop Running

##Options
#Delete or put # infront of the things you dont want them, or you wnat to enable them

#-Remove the dont_stop_running.running, so when you die, then you again respawn with it, and need to remove mannualy
#tag @s remove dont_stop_running.running


#Reset
scoreboard players set @s minigames.timer1 0

#Summon firework, to look good
execute at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16746496,16711680,16774912,16711680,16746496,16774912],FadeColors:[I;16711680,16746496,16711680,16774912,16774912,16746496]}]}}}}

#Kill you
kill @s

