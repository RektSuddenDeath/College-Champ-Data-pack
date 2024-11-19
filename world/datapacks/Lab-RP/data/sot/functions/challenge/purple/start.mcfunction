
title @a[tag=sotChallenger,team=purple] times 10 20 10
title @a[tag=sotChallenger,team=purple] title "§c挑战开始！"
title @a[tag=sotChallenger,team=purple] subtitle ""

execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=purple] at @s run place template sot:challenge/shattered_ground_2_start ~-11 ~-17 ~-11

execute as @e[type=zombie,tag=sotchallengemob_purple] run data modify entity @s NoAI set value 0b
execute as @e[type=pillager,tag=sotchallengemob_purple] run data modify entity @s NoAI set value 0b

scoreboard players set purple SotChalTime 841
scoreboard players set purple SotChalProgress 0
function sot:challenge/purple/detect