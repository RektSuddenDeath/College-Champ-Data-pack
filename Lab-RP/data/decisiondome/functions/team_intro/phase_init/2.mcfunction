
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a ""
tellraw @a [{"text": "  欢迎来到高校小游戏联赛","bold": true,"color":"yellow"}]
tellraw @a " "
tellraw @a "  以下是规则介绍……"
tellraw @a " "
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10

#function decisiondome:team_intro/phase_loop/2