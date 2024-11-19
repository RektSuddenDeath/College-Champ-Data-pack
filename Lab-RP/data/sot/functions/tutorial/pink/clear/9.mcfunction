

execute as @a[team=pink] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=pink] times 0 10 10
title @a[team=pink] title ""
title @a[team=pink] subtitle "§a§lCLEAR!"

scoreboard players set pink sot_tutorial_delay 40
