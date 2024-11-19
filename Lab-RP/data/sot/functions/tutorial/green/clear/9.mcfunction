

execute as @a[team=green] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=green] times 0 10 10
title @a[team=green] title ""
title @a[team=green] subtitle "§a§lCLEAR!"

scoreboard players set green sot_tutorial_delay 40
