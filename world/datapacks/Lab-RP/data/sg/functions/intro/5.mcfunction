
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ","§l游戏过程中，边界将会逐渐收缩。"]
tellraw @a " "
tellraw @a "  "
tellraw @a "  玩家需要避免被困于边界外，否则将受到持续的伤害。"
tellraw @a "  手持§a任何近战武器§r均可以破坏地图中的玻璃。"
tellraw @a "  "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
