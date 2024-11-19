
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ","§l在 Survival Games, 你的目标是成为最后一个生存的玩家。"]
tellraw @a " "
tellraw @a " "
tellraw @a "  你将在地图中找到大量的箱子。"
tellraw @a "  箱子中含有武器、装备、原材料等有用的物品。"
tellraw @a "  "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
