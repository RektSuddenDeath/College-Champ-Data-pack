

execute as @a[team=yellow] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=yellow] times 0 10 10
title @a[team=yellow] title ""
title @a[team=yellow] subtitle "§a§lCLEAR!"

scoreboard players set yellow sot_tutorial_delay 40
execute as @e[type=area_effect_cloud,tag=SotCore,tag=yellow] at @s positioned ~-500 ~ ~-500 run fill ~549 -38 ~503 ~550 -35 ~505 air
