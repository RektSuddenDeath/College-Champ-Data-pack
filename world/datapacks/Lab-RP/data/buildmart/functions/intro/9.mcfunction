 
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ",{"text": "游戏积分规则","color":"yellow","bold": true}]
tellraw @a " "
tellraw @a "  - 根据完成一个建筑的§e先后§f，依据所在序列分别积分。"
tellraw @a "  - 普通建筑：§a130/115/105/95/85/75/70/65"
tellraw @a "  - §e黄金建筑§f：§a210/185/165/150/135/125/115/105"
tellraw @a " "
tellraw @a "  §o游戏结束时，未完成的建筑不得分。"
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup record @s ~ ~ ~ 1.5