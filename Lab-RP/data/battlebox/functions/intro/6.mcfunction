execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"color":"yellow","bold":true,"text":"  积分标准:  "}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"color": "white","text":"  击杀敌人: "},{"score":{"name":"Kill","objective": "bb_stats"},"color":"green"}]
tellraw @a [{"color": "white","text":"  获胜: "},{"score":{"name":"Win","objective": "bb_stats"},"color":"green"},{"text": " [全队平分]","color": "gray"}]
tellraw @a [{"text": "  平局: "},{"text":"0","color":"red"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]