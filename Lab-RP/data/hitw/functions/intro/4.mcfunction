
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  你可以从墙的上方跳过，也可以"]
tellraw @a ["  从墙下方的空隙中穿过。"]
tellraw @a " "
tellraw @a "  每局游戏你只有一条命"
tellraw @a "  游戏将进行3回合。"
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10