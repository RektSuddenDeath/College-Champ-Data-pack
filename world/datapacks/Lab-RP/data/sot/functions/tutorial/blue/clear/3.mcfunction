
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s positioned ~-500 ~ ~-500 run setblock ~498 -38 ~500 air
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s positioned ~-500 ~ ~-500 run setblock ~502 -38 ~500 air
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s positioned ~-500 ~ ~-500 run setblock ~500 -38 ~498 air
execute as @e[type=area_effect_cloud,tag=SotCore,tag=blue] at @s positioned ~-500 ~ ~-500 run setblock ~500 -38 ~502 air

execute as @a[team=blue] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=blue] times 0 10 10
title @a[team=blue] title ""
title @a[team=blue] subtitle "§a§lCLEAR!"

scoreboard players set blue sot_tutorial_delay 40