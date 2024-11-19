

execute as @a[team=pink] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=pink] times 0 10 10
title @a[team=pink] title ""
title @a[team=pink] subtitle "§a§lCLEAR!"

scoreboard players set pink sot_tutorial_delay 40
execute as @e[type=area_effect_cloud,tag=SotCore,tag=pink] at @s positioned ~-500 ~ ~-500 run fill ~549 -38 ~503 ~550 -35 ~505 air
