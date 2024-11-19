execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10


tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a ""
tellraw @a ["  ",{"text": "你的火箭发射器最多储存3发射击，并且","bold": true}]
tellraw @a ["  ",{"text": "使用后每2.1秒装填一发。","bold": true}]
tellraw @a ""
tellraw @a "  除了炸毁敌人脚下地面之外，你的火箭发射器"
tellraw @a "  也拥有较强的近战击退。"
tellraw @a ""
tellraw @a ""
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]