tellraw @a " "
tellraw @a "回合 7/7"
execute if score redwin pkt_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   红队","color":"red","bold":true},{"text": " vs. ","color":"white"},{"text": "紫队","color":"gray","bold":false}]
execute if score purplewin pkt_cache matches 1 run tellraw @a ["",{"text": "  红队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "紫队","color":"dark_purple","bold":true}]
execute if score redwin pkt_cache matches 0 if score purplewin pkt_cache matches 0 run tellraw @a ["",{"text": "   红队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "紫队","color": "gray"}]

execute if score bluewin pkt_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   蓝队","color":"blue","bold":true},{"text": " vs. ","color":"white"},{"text": "橙队","color":"gray","bold":false}]
execute if score orangewin pkt_cache matches 1 run tellraw @a ["",{"text": "  蓝队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "橙队","color":"gold","bold":true}]
execute if score bluewin pkt_cache matches 0 if score orangewin pkt_cache matches 0 run tellraw @a ["",{"text": "   蓝队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "橙队","color": "gray"}]

execute if score greenwin pkt_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   绿队","color":"green","bold":true},{"text": " vs. ","color":"white"},{"text": "粉队","color":"gray","bold":false}]
execute if score pinkwin pkt_cache matches 1 run tellraw @a ["",{"text": "  绿队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "粉队","color":"light_purple","bold":true}]
execute if score greenwin pkt_cache matches 0 if score pinkwin pkt_cache matches 0 run tellraw @a ["",{"text": "   绿队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "粉队","color": "gray"}]

execute if score yellowwin pkt_cache matches 1 run tellraw @a ["",{"text": ""},{"text": "   黄队","color":"yellow","bold":true},{"text": " vs. ","color":"white"},{"text": "青队","color":"gray","bold":false}]
execute if score cyanwin pkt_cache matches 1 run tellraw @a ["",{"text": "  黄队","color":"gray","bold":false},{"text": " vs. ","color":"white"},{"text": "青队","color":"dark_aqua","bold":true}]
execute if score yellowwin pkt_cache matches 0 if score cyanwin pkt_cache matches 0 run tellraw @a ["",{"text": "   黄队","color":"gray"},{"text": " vs. ","color":"white"},{"text": "青队","color": "gray"}]
tellraw @a ""

scoreboard players set redwin pkt_cache 0
scoreboard players set bluewin pkt_cache 0
scoreboard players set greenwin pkt_cache 0
scoreboard players set yellowwin pkt_cache 0
scoreboard players set cyanwin pkt_cache 0
scoreboard players set pinkwin pkt_cache 0
scoreboard players set orangewin pkt_cache 0
scoreboard players set purplewin pkt_cache 0

# Game Scoring Calculate
scoreboard players set red pkt_teamscore 0
scoreboard players set blue pkt_teamscore 0
scoreboard players set green pkt_teamscore 0
scoreboard players set yellow pkt_teamscore 0
scoreboard players set cyan pkt_teamscore 0
scoreboard players set orange pkt_teamscore 0
scoreboard players set purple pkt_teamscore 0
scoreboard players set pink pkt_teamscore 0

execute as @a[team=red] run scoreboard players operation red pkt_teamscore += @s pkt_indvscore
execute as @a[team=blue] run scoreboard players operation blue pkt_teamscore += @s pkt_indvscore
execute as @a[team=green] run scoreboard players operation green pkt_teamscore += @s pkt_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow pkt_teamscore += @s pkt_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan pkt_teamscore += @s pkt_indvscore
execute as @a[team=orange] run scoreboard players operation orange pkt_teamscore += @s pkt_indvscore
execute as @a[team=purple] run scoreboard players operation purple pkt_teamscore += @s pkt_indvscore
execute as @a[team=pink] run scoreboard players operation pink pkt_teamscore += @s pkt_indvscore

scoreboard players operation red pkt_teamscore *= multiplier1 tourney_stats
scoreboard players operation red pkt_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue pkt_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue pkt_teamscore /= multiplier2 tourney_stats

scoreboard players operation green pkt_teamscore *= multiplier1 tourney_stats
scoreboard players operation green pkt_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow pkt_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow pkt_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan pkt_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan pkt_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange pkt_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange pkt_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple pkt_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple pkt_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink pkt_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink pkt_teamscore /= multiplier2 tourney_stats

scoreboard players operation 红队 overallscore += red pkt_teamscore
scoreboard players operation 蓝队 overallscore += blue pkt_teamscore
scoreboard players operation 绿队 overallscore += green pkt_teamscore
scoreboard players operation 黄队 overallscore += yellow pkt_teamscore
scoreboard players operation 青队 overallscore += cyan pkt_teamscore
scoreboard players operation 橙队 overallscore += orange pkt_teamscore
scoreboard players operation 紫队 overallscore += purple pkt_teamscore
scoreboard players operation 粉队 overallscore += pink pkt_teamscore

scoreboard players operation red GameRankTarget = red pkt_teamscore
scoreboard players operation blue GameRankTarget = blue pkt_teamscore
scoreboard players operation green GameRankTarget = green pkt_teamscore
scoreboard players operation yellow GameRankTarget = yellow pkt_teamscore
scoreboard players operation cyan GameRankTarget = cyan pkt_teamscore
scoreboard players operation orange GameRankTarget = orange pkt_teamscore
scoreboard players operation purple GameRankTarget = purple pkt_teamscore
scoreboard players operation pink GameRankTarget = pink pkt_teamscore

function utils:personal/update

schedule function parkourtag:alive 3s
schedule function parkourtag:aliveanno 5s
schedule function utils:text/gamescore 8s
schedule function utils:text/mvp 16s
schedule function parkourtag:mvpannouncement 16s
schedule function utils:text/eventstandings 24s