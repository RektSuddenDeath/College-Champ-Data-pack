
title @a[tag=sotChallenger,team=blue] times 10 20 10
title @a[tag=sotChallenger,team=blue] title "§c挑战开始！"
title @a[tag=sotChallenger,team=blue] subtitle ""

execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=blue] at @s run place template sot:challenge/shattered_ground_2_start ~-11 ~-17 ~-11

execute as @e[type=zombie,tag=sotchallengemob_blue] run data modify entity @s NoAI set value 0b
execute as @e[type=pillager,tag=sotchallengemob_blue] run data modify entity @s NoAI set value 0b

scoreboard players set blue SotChalTime 841
scoreboard players set blue SotChalProgress 0
function sot:challenge/blue/detect