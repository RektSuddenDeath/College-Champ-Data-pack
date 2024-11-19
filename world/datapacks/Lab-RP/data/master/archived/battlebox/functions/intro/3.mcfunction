tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"color":"yellow","text":"  游戏目标","bold":true}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  你将与另一个队伍在场地内对战\n  你需要将中间的羊毛全部替换为己方颜色才能获胜。","color":"white"}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10