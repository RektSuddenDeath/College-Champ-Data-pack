
title @a[tag=sotChallenger,team=red] times 10 20 10
title @a[tag=sotChallenger,team=red] title "§c挑战开始！"
title @a[tag=sotChallenger,team=red] subtitle ""

execute as @e[type=area_effect_cloud,tag=sotchallenge,tag=red] at @s run place template sot:challenge/shattered_ground_2_start ~-11 ~-17 ~-11

execute as @e[type=zombie,tag=sotchallengemob_red] run data modify entity @s NoAI set value 0b
execute as @e[type=pillager,tag=sotchallengemob_red] run data modify entity @s NoAI set value 0b

scoreboard players set red SotChalTime 841
scoreboard players set red SotChalProgress 0
function sot:challenge/red/detect