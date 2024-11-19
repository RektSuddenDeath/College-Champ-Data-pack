
tellraw @s "§eCleared all nearby marks."
execute as @e[type=magma_cube,tag=sgchestmark] at @s run data modify entity @s Glowing set value 0b
execute as @e[type=magma_cube,tag=sgchestmark] at @s run tp @s ~ -96 ~
execute as @e[type=magma_cube,tag=sgchestmark] at @s run kill @s