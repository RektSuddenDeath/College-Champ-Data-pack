tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  请等待游戏开始...","color":"red"}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

execute as @e[type=area_effect_cloud,tag=SotCore] at @s run fill ~-9 82 ~-32 ~9 86 ~-32 nether_portal
# fill 2491 82 2468 2509 86 2468 minecraft:nether_portal
# fill 1991 82 2468 2009 86 2468 minecraft:nether_portal
# fill 2491 82 1968 2509 86 1968 minecraft:nether_portal
# fill 2491 82 2968 2509 86 2968 minecraft:nether_portal