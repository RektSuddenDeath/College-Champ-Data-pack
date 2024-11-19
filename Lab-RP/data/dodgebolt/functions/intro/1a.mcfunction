

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10
scoreboard players set intro_active tourney_stats 1

tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a [{"text":"  欢迎来到 Dodgebolt","color":"yellow","bold":true}]
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"text":"  以下是游戏玩法介绍...","color":"white","italic":true}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]