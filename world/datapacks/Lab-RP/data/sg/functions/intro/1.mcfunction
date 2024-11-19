
title @a times 10 40 10
title @a title ["",{"text": "Survival Games","color":"yellow"}]
kill @e[type=armor_stand,tag=intro]
execute in sg:sjtu run summon armor_stand 464.00 29.27 1377.5 {Tags:["intro"],Rotation:[-90f,8f],NoGravity:1b,Invisible:1b,Invulnerable:1b}
gamemode spectator @a
function sg:intro/hold