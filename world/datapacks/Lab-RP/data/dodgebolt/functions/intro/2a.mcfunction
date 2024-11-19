
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  游戏简介","color":"yellow","bold":true}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  游戏开始后，双方场地将各掉落一支箭","color":"white"}]
tellraw @a [{"text":"  玩家需要将它们捡起并射向对手","color":"white"}]
tellraw @a [{"text":"  弓箭一击致命","color":"red"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]