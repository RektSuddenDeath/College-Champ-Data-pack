
title @a[team=blue] actionbar ["[§e!§f] ","进入红色通道入口。"]

execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s positioned ~15 -39 ~2 run tag @a[team=blue,dx=6,dy=4,dz=4] add sot_check_5
execute if entity @a[team=blue,tag=!sot_check_5] run return 0
return 1