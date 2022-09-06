setblock ~ ~ ~ oak_sign{Text1:'{"selector":"@p"}'} destroy
data modify storage mod:reports Reports append value {ReporterIGN:"empty",ReportedIGN:"empty",ReportReason:"empty"}
data modify storage mod:reports Reports[-1].ReporterIGN set from block ~ ~ ~ Text1
data modify storage mod:reports Reports[-1].ReportedIGN set from entity @s SelectedItem.tag.pages[0]
data modify storage mod:reports Reports[-1].ReportReason set from entity @s SelectedItem.tag.pages[1]


tellraw @a[team=Admin]  ["",{"text":"[REPORT] ","bold":true,"color":"gold"},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"bold":true,"color":"yellow"},{"text":" reported ","bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.pages[0]","entity":"@s","interpret":false,"bold":true,"color":"yellow"},{"text":" with reason: ","bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.pages[1]","entity":"@s","interpret":false,"bold":true,"color":"yellow"},{"text":"!","color":"gold"}]
tellraw @a[team=Owner]  ["",{"text":"[REPORT] ","bold":true,"color":"gold"},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"bold":true,"color":"yellow"},{"text":" reported ","bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.pages[0]","entity":"@s","interpret":false,"bold":true,"color":"yellow"},{"text":" with reason: ","bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.pages[1]","entity":"@s","interpret":false,"bold":true,"color":"yellow"},{"text":"!","color":"gold"}]
tellraw @a[team=Moderator]  ["",{"text":"[REPORT] ","bold":true,"color":"gold"},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"bold":true,"color":"yellow"},{"text":" reported ","bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.pages[0]","entity":"@s","interpret":false,"bold":true,"color":"yellow"},{"text":" with reason: ","bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.pages[1]","entity":"@s","interpret":false,"bold":true,"color":"yellow"},{"text":"!","color":"gold"}]
tellraw @a[team=Helper]  ["",{"text":"[REPORT] ","bold":true,"color":"gold"},{"nbt":"Text1","block":"~ ~ ~","interpret":true,"bold":true,"color":"yellow"},{"text":" reported ","bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.pages[0]","entity":"@s","interpret":false,"bold":true,"color":"yellow"},{"text":" with reason: ","bold":true,"color":"gold"},{"nbt":"SelectedItem.tag.pages[1]","entity":"@s","interpret":false,"bold":true,"color":"yellow"},{"text":"!","color":"gold"}]

item replace entity @s weapon.mainhand with minecraft:air
setblock ~ ~ ~ air 
tellraw @s {"text": "Thanks for reporthing this user! Staff have been notified and will attend to it as soon as they can"}