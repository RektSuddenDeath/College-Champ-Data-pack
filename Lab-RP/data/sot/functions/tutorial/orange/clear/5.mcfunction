

execute as @a[team=orange] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=orange] times 0 10 10
title @a[team=orange] title ""
title @a[team=orange] subtitle "§a§lCLEAR!"

scoreboard players set orange sot_tutorial_delay 40
execute as @e[type=area_effect_cloud,tag=SotCore,tag=orange] at @s positioned ~-500 ~ ~-500 run fill ~522 -36 ~503 ~514 -38 ~505 air
