
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  游戏提示","color":"yellow","bold":true}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  1.你只能在本方区域进行射击。","color":"white"}]
tellraw @a [{"text":"  2.不要掉入场地下方的熔岩！","color":"white"}]
tellraw @a [{"text":"  3.进行难以预测的移动是躲避箭矢的唯一途径！","color":"white"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]