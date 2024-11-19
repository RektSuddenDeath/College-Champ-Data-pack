
kill @e[type=armor_stand,tag=arintro]
# tp @a -982 142 -1003 facing -1030 139 -998
summon armor_stand -29997.86 120.17 -29965.47 {Tags:["arintro","Intro"],CustomName:'"Intro"',NoGravity:1b,Rotation:[180f,0f],Invisible:1b}
gamemode spectator @a
title @a times 10 40 10
title @a title [{"text": "Ace Race","color":"yellow"}]

scoreboard players set intro_active tourney_stats 1
function acerace3:intro/hold