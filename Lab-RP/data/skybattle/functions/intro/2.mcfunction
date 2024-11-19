execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10


tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a ""
tellraw @a ["  ",{"text": "欢迎来到 Sky Battle!","bold": true,"color": "yellow"}]
tellraw @a ""
tellraw @a ""
tellraw @a ["  ",{"text": "以下是游戏规则介绍……","italic": true}]
tellraw @a ""
tellraw @a ""
tellraw @a ""
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

kill @e[type=item]