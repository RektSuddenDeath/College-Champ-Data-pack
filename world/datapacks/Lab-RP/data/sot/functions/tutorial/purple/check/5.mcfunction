
title @a[team=purple] actionbar ["[§e!§f] ","进入红色通道入口。"]

execute as @e[type=area_effect_cloud,tag=SotCore,tag=purple] at @s positioned ~15 -39 ~2 run tag @a[team=purple,dx=6,dy=4,dz=4] add sot_check_5
execute if entity @a[team=purple,tag=!sot_check_5] run return 0
return 1