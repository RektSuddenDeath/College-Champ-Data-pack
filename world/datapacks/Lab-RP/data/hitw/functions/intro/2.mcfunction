
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ["  ",{"text": "欢迎来到 Hole in the Wall!","color":"yellow","bold": true}]
tellraw @a " "
tellraw @a " "
tellraw @a ""
tellraw @a ["",{"text": "  以下是游戏规则介绍……","color":"white","italic": true}]
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]

execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

scoreboard players set intro_active tourney_stats 1

fill -4992 112 -4980 -5007 118 -5019 air
fill -5019 118 -5007 -4980 112 -4992 air

kill @e[type=minecraft:armor_stand,tag=north]
kill @e[type=minecraft:armor_stand,tag=west]
kill @e[type=minecraft:armor_stand,tag=south]
kill @e[type=minecraft:armor_stand,tag=east]