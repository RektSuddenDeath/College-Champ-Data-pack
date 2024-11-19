

execute as @a[team=cyan] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=cyan] times 0 10 10
title @a[team=cyan] title ""
title @a[team=cyan] subtitle "§a§lCLEAR!"

scoreboard players set cyan sot_tutorial_delay 40
