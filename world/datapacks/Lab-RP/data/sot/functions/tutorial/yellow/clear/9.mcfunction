

execute as @a[team=yellow] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=yellow] times 0 10 10
title @a[team=yellow] title ""
title @a[team=yellow] subtitle "§a§lCLEAR!"

scoreboard players set yellow sot_tutorial_delay 40
