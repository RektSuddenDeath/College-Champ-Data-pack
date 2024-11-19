
execute as @a[team=green] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=green] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=green] " "
tellraw @a[team=green] "  "
tellraw @a[team=green] " "
tellraw @a[team=green] "  地图中有多条不同的隧道。"
tellraw @a[team=green] "  通过隧道可以深入地牢，通过探索来获得金币奖励。"
tellraw @a[team=green] " "
tellraw @a[team=green] " "
tellraw @a[team=green] " "
tellraw @a[team=green] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set green sot_tutorial_delay 80