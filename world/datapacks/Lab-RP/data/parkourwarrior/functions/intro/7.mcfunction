tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"color":"yellow","text":"  游戏积分方式","bold":true}]
tellraw @a " "
tellraw @a ["",{"text": "  完成一小关: ","color":"white"},{"text":"15","color":"green"}]
tellraw @a ["",{"text": "  完成一大关: ","color":"white"},{"text":"20","color":"green"}]
tellraw @a ""
tellraw @a ["",{"text": "  完成全部挑战: ","color":"white"},{"text":"280","color":"green"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10