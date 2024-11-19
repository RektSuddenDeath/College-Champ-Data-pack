

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  逌 §bMegabolt: ",{"text": "Pick Your Team!","color": "#E3E3E3"}]
tellraw @a " "
tellraw @a "  "
tellraw @a "  现在，积分第一、第二的双方§e代表§f将会轮流选定一个队伍"
tellraw @a ["  作为其","§b Megabolt ","§f的队友，直到六个队伍"]
tellraw @a "  全部被选择完毕。"
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]