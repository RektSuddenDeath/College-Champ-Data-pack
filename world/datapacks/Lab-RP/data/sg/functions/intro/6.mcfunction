
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ","§l游戏过程中会投放5个空投，提供大量积分奖励。"]
tellraw @a " "
tellraw @a "  空投在游戏开始2分钟后，每90秒投放一个。"
tellraw @a "  玩家可以通过手中的指南针定位其位置。"
tellraw @a "  "
tellraw @a "  §c在下一个空投刷出时，未获取完毕的上一个空投将消失。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
