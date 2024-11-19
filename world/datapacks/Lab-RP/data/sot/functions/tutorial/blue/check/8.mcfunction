
title @a[team=blue] actionbar ["[§e!§f] ","打开§c红色宝库§f。"]
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s positioned ~-500 ~ ~-500 if block ~586 -38 ~504 red_concrete run return 1
return 0
