
title @a[team=green] actionbar ["[§e!§f] ","进入红色通道入口。"]

execute as @e[type=area_effect_cloud,tag=SotCore,tag=green] at @s positioned ~15 -39 ~2 run tag @a[team=green,dx=6,dy=4,dz=4] add sot_check_5
execute if entity @a[team=green,tag=!sot_check_5] run return 0
return 1