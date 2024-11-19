
execute as @a[team=blue] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=blue] " "
tellraw @a[team=blue] "  §e§l这是一个限时PVE游戏。"
tellraw @a[team=blue] " "
tellraw @a[team=blue] " "
tellraw @a[team=blue] "   所有队伍均需要挑战一个§l相互独立且完全一致§r的地牢。"
tellraw @a[team=blue] " "
tellraw @a[team=blue] " "
tellraw @a[team=blue] " "
tellraw @a[team=blue] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set blue sot_tutorial_delay 80