# Parkour Rush Modifier
execute if score modifiers_parkour_rush pkw2_game matches 1 if score f-e-1 pkw2_level_clears >= f-e-1 pkw2_level_clear_limit run function pkw2:modifiers/parkour_rush/over_limit_complete
execute if score modifiers_parkour_rush pkw2_game matches 1 if score f-e-1 pkw2_level_clears >= f-e-1 pkw2_level_clear_limit run return 0

tag @s add easyComplete
tag @s add easyFinal

execute at @s run playsound minecraft:sound.pkw_course_finish record @s

title @s times 0 20 10
title @s title ""
title @s subtitle ["","+0.15x ","§6团队倍率"]
tellraw @s ["","§a[§r彀§a] §f你完成了 ",{"selector":"@e[type=area_effect_cloud,scores={pkw2_stagename=31}]"}," §f!"]
scoreboard players set @s pkw2_final 1
tellraw @a ["","§b[§r梎§b] ",{"selector":"@s"},"§7完成了全部挑战！"]
gamemode spectator @s
execute at @s run tp @s ~ ~ ~-5 180 0

execute as @s[tag=easyFinal,team=red] run function pkw2:firework/queue/easy/red
execute as @s[tag=easyFinal,team=blue] run function pkw2:firework/queue/easy/blue
execute as @s[tag=easyFinal,team=green] run function pkw2:firework/queue/easy/green
execute as @s[tag=easyFinal,team=yellow] run function pkw2:firework/queue/easy/yellow
execute as @s[tag=easyFinal,team=cyan] run function pkw2:firework/queue/easy/cyan
execute as @s[tag=easyFinal,team=orange] run function pkw2:firework/queue/easy/orange
execute as @s[tag=easyFinal,team=pink] run function pkw2:firework/queue/easy/pink
execute as @s[tag=easyFinal,team=purple] run function pkw2:firework/queue/easy/purple

tag @s remove easyFinal


# Parkour Rush Modifier
scoreboard players add f-e-1 pkw2_level_clears 1
execute if score modifiers_parkour_rush pkw2_game matches 1 run execute as @a[scores={pkw2_cp=37},gamemode=!spectator] at @s run playsound sound.enemy_completed record @s ~ ~ ~ 2

# Completion Sabotage Modifier
execute if score modifiers_completion_sabotage pkw2_game matches 1 run tellraw @s ["§b———————————————————————————————————","\n","§fCompletion Sabotage","\n\n","§b你完成了比赛！你现在可以使用","§f/trigger pkw2_sabotage","§b命令来在你的脚下放置§6§l一块§b混凝土，帮助场上的玩家或制造一些小麻烦！§c仅限一次哦！","\n\n","§b———————————————————————————————————"]