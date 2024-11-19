

execute as @a[team=red] at @s run playsound block.note_block.harp record @s ~ ~ ~
title @a[team=red] times 0 10 10
title @a[team=red] title ""
title @a[team=red] subtitle "§a§lCLEAR!"

scoreboard players set red sot_tutorial_delay 40
