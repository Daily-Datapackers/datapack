tag @s remove dont_stop_running.running
scoreboard players set @s minigames.timer1 0
execute at @s run summon firework_rocket ~ ~1 ~ {FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:0,Colors:[I;16746496,16711680,16774912,16711680,16746496,16774912],FadeColors:[I;16711680,16746496,16711680,16774912,16774912,16746496]}]}}}}
kill @s