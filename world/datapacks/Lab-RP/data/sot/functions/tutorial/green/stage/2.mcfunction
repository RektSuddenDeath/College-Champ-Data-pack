
execute as @a[team=green] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=green] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=green] " "
tellraw @a[team=green] "  §e§l这是一个限时PVE游戏。"
tellraw @a[team=green] " "
tellraw @a[team=green] " "
tellraw @a[team=green] "   所有队伍均需要挑战一个§l相互独立且完全一致§r的地牢。"
tellraw @a[team=green] " "
tellraw @a[team=green] " "
tellraw @a[team=green] " "
tellraw @a[team=green] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set green sot_tutorial_delay 80