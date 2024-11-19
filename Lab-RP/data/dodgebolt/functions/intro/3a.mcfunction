
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  游戏简介","color":"yellow","bold":true}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  随着剩余人数减少，场地会逐渐收缩","color":"white"}]
tellraw @a [{"text":"  淘汰所有玩家即可赢得此回合","color":"white"}]
tellraw @a [{"text":"  率先赢得三回合的队伍获胜","color":"yellow"}]
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]