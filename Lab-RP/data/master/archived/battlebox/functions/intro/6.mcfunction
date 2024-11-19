execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a {"color":"yellow","bold":true,"text":"  积分标准: "}
tellraw @a " "
tellraw @a " "
tellraw @a [{"color": "white","text":"  击杀敌人: "},{"text":"7","color":"green"}]
tellraw @a [{"color": "white","text":"  获胜: "},{"text":"30","color":"green"}]
tellraw @a [{"text": "  时间结束时双方均未填满中心: "},{"text":"0","color":"red"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]