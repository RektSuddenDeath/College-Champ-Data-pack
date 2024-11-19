
tellraw @s "§cHighlighted chests within 64 blocks. Easy difficulty is required."
execute as @e[type=marker,tag=sgchest,distance=0..64,tag=tier1] at @s run summon magma_cube ~ ~-0.2 ~ {NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b,Team:"green",Tags:["sgchestmark","tier1"],Size:1}
execute as @e[type=magma_cube,tag=sgchestmark,tag=tier1] run effect give @s invisibility 999999 0 true

execute as @e[type=marker,tag=sgchest,distance=0..64,tag=tier2] at @s run summon magma_cube ~ ~-0.2 ~ {NoAI:1b,NoGravity:1b,Glowing:1b,Invulnerable:1b,Team:"orange",Tags:["sgchestmark","tier2"],Size:1}
execute as @e[type=magma_cube,tag=sgchestmark,tag=tier2] run effect give @s invisibility 999999 0 true

scoreboard objectives add sg_tempcount dummy
scoreboard players set t1 sg_tempcount 0
scoreboard players set t2 sg_tempcount 0
execute as @e[type=marker,tag=sgchest,distance=0..64,tag=tier1] run scoreboard players add t1 sg_tempcount 1
execute as @e[type=marker,tag=sgchest,distance=0..64,tag=tier2] run scoreboard players add t2 sg_tempcount 1
tellraw @s ["","§eThere are ",{"score":{"name": "t1","objective": "sg_tempcount"},"color": "green"}," §aT1 Chests §eand ",{"score":{"name": "t2","objective": "sg_tempcount"},"color": "gold"}," §6T2 Chests §ein the radius."]
scoreboard objectives remove sg_tempcount