
execute as @a[team=cyan] run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.5
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "  "
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] "  地图中有多条不同的隧道。"
tellraw @a[team=cyan] "  通过隧道可以深入地牢，通过探索来获得金币奖励。"
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] " "
tellraw @a[team=cyan] [{"color":"green","text":"———————————————————————————————————"}]

scoreboard players set cyan sot_tutorial_delay 80