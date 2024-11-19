

execute as @a[team=orange] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=orange] times 0 10 10
title @a[team=orange] title ""
title @a[team=orange] subtitle "§a§lCLEAR!"

scoreboard players set orange sot_tutorial_delay 40
