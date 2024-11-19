

execute as @a[team=cyan] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=cyan] times 0 10 10
title @a[team=cyan] title ""
title @a[team=cyan] subtitle "§a§lCLEAR!"

scoreboard players set cyan sot_tutorial_delay 40
execute as @e[type=area_effect_cloud,tag=SotCore,tag=cyan] at @s positioned ~-500 ~ ~-500 run fill ~586 -36 ~502 ~587 -40 ~506 air
