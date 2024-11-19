
execute as @a[team=pink] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=pink] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=pink] " "
tellraw @a[team=pink] "  §e§l这是一个限时PVE游戏。"
tellraw @a[team=pink] " "
tellraw @a[team=pink] " "
tellraw @a[team=pink] "   所有队伍均需要挑战一个§l相互独立且完全一致§r的地牢。"
tellraw @a[team=pink] " "
tellraw @a[team=pink] " "
tellraw @a[team=pink] " "
tellraw @a[team=pink] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set pink sot_tutorial_delay 80