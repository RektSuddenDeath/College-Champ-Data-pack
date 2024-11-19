
execute as @a[team=red] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=red] " "
tellraw @a[team=red] "  "
tellraw @a[team=red] " "
tellraw @a[team=red] "  地图中有多条不同的隧道。"
tellraw @a[team=red] "  通过隧道可以深入地牢，通过探索来获得金币奖励。"
tellraw @a[team=red] " "
tellraw @a[team=red] " "
tellraw @a[team=red] " "
tellraw @a[team=red] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set red sot_tutorial_delay 80