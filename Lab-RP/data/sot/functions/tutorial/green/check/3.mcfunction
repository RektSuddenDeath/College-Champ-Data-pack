
execute as @e[type=area_effect_cloud,tag=SotCore,tag=green] at @s positioned ~-500 ~ ~-500 if block ~498 -38 ~500 sand run return 1
execute as @e[type=area_effect_cloud,tag=SotCore,tag=green] at @s positioned ~-500 ~ ~-500 if block ~502 -38 ~500 sand run return 1
execute as @e[type=area_effect_cloud,tag=SotCore,tag=green] at @s positioned ~-500 ~ ~-500 if block ~500 -38 ~502 sand run return 1
execute as @e[type=area_effect_cloud,tag=SotCore,tag=green] at @s positioned ~-500 ~ ~-500 if block ~500 -38 ~498 sand run return 1

title @a[team=green] actionbar ["[§e!§f] ","将一枚沙子填入沙漏。"]
return 0