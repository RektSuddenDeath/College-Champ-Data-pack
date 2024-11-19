# Parkour Rush Modifier
execute if score modifiers_parkour_rush pkw2_game matches 1 if score f-m-2 pkw2_level_clears >= f-m-2 pkw2_level_clear_limit run function pkw2:modifiers/parkour_rush/over_limit_complete
execute if score modifiers_parkour_rush pkw2_game matches 1 if score f-m-2 pkw2_level_clears >= f-m-2 pkw2_level_clear_limit run return 0

tag @s add mediumComplete
tag @s add mediumFinal

execute at @s run playsound minecraft:sound.pkw_course_finish record @s

title @s times 0 20 10
title @s title ""
title @s subtitle ["","+0.30x ","§6团队倍率"]
tellraw @s ["","§a[§r彀§a] §f你完成了 ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=33}]"}," §f!"]
scoreboard players set @s pkw2_final 2
tellraw @a ["","§b[§r梎§b] ",{"selector":"@s"},"§7完成了全部挑战！"]
gamemode spectator @s
execute at @s run tp @s ~ ~ ~-5 180 0

execute as @s[tag=mediumFinal,team=red] run function pkw2:firework/queue/medium/red
execute as @s[tag=mediumFinal,team=blue] run function pkw2:firework/queue/medium/blue
execute as @s[tag=mediumFinal,team=green] run function pkw2:firework/queue/medium/green
execute as @s[tag=mediumFinal,team=yellow] run function pkw2:firework/queue/medium/yellow
execute as @s[tag=mediumFinal,team=cyan] run function pkw2:firework/queue/medium/cyan
execute as @s[tag=mediumFinal,team=orange] run function pkw2:firework/queue/medium/orange
execute as @s[tag=mediumFinal,team=pink] run function pkw2:firework/queue/medium/pink
execute as @s[tag=mediumFinal,team=purple] run function pkw2:firework/queue/medium/purple

tag @s remove mediumFinal


# Parkour Rush Modifier
scoreboard players add f-m-2 pkw2_level_clears 1
execute if score modifiers_parkour_rush pkw2_game matches 1 run execute as @a[scores={pkw2_cp=39},gamemode=!spectator] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 2

# Completion Sabotage Modifier
execute if score modifiers_completion_sabotage pkw2_game matches 1 run tellraw @s ["§b———————————————————————————————————","\n","§fCompletion Sabotage","\n\n","§b你完成了比赛！你现在可以使用","§f/trigger pkw2_sabotage","§b命令来在你的脚下放置§6§l一块§b混凝土，帮助场上的玩家或制造一些小麻烦！§c仅限一次哦！","\n\n","§b———————————————————————————————————"]