

execute as @a[team=purple] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=purple] times 0 10 10
title @a[team=purple] title ""
title @a[team=purple] subtitle "§a§lCLEAR!"

scoreboard players set purple sot_tutorial_delay 40
execute as @e[type=area_effect_cloud,tag=SotCore,tag=purple] at @s positioned ~-500 ~ ~-500 run fill ~549 -38 ~503 ~550 -35 ~505 air
