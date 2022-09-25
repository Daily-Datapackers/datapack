
execute if data entity @s SelectedItem.tag{Setting:1} as @e[type=marker,tag=parkour,tag=selected] at @s run function tools:parkour/val_setter/actions/toggle_active

execute if data entity @s SelectedItem.tag{Setting:2} as @e[type=marker,tag=parkour,tag=selected] at @s run function tools:parkour/val_setter/actions/set_timer

execute if data entity @s SelectedItem.tag{Setting:3} as @e[type=marker,tag=parkour,tag=selected] at @s run function tools:parkour/val_setter/actions/set_timer_start
