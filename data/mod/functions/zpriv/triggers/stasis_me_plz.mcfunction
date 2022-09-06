summon marker ~ ~ ~ {Tags:["mod.stasis_marker_1"]}
summon marker ^ ^ ^0.1 {Tags:["mod.stasis_marker_2"]}
tag @s add mod.stasis
title @s times 0 100 100
title @s subtitle {"text": "You are in stasis","color": "yellow"}
title @s title {"text": "STASIS","color": "gold","bold": true}
tellraw @s {"text": "You have been put in stasis by a member of staff. Please do not log out. A staff member will be with you shortly.","color": "gold"}