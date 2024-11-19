
execute as @a[team=red] run scoreboard players operation red pkw2_teamscore += @s pkw2_indvscore
execute as @a[team=blue] run scoreboard players operation blue pkw2_teamscore += @s pkw2_indvscore
execute as @a[team=green] run scoreboard players operation green pkw2_teamscore += @s pkw2_indvscore
execute as @a[team=yellow] run scoreboard players operation yellow pkw2_teamscore += @s pkw2_indvscore
execute as @a[team=cyan] run scoreboard players operation cyan pkw2_teamscore += @s pkw2_indvscore
execute as @a[team=orange] run scoreboard players operation orange pkw2_teamscore += @s pkw2_indvscore
execute as @a[team=pink] run scoreboard players operation pink pkw2_teamscore += @s pkw2_indvscore
execute as @a[team=purple] run scoreboard players operation purple pkw2_teamscore += @s pkw2_indvscore

scoreboard players set @a[tag=easyComplete] pkw2_selfmulti 15
scoreboard players set @a[tag=mediumComplete] pkw2_selfmulti 35
scoreboard players set @a[tag=hardComplete] pkw2_selfmulti 80

scoreboard players operation @a[team=red] pkw2_extrascore = red pkw2_teamscore
scoreboard players operation @a[team=blue] pkw2_extrascore = blue pkw2_teamscore
scoreboard players operation @a[team=green] pkw2_extrascore = green pkw2_teamscore
scoreboard players operation @a[team=yellow] pkw2_extrascore = yellow pkw2_teamscore
scoreboard players operation @a[team=cyan] pkw2_extrascore = cyan pkw2_teamscore
scoreboard players operation @a[team=orange] pkw2_extrascore = orange pkw2_teamscore
scoreboard players operation @a[team=pink] pkw2_extrascore = pink pkw2_teamscore
scoreboard players operation @a[team=purple] pkw2_extrascore = purple pkw2_teamscore

execute as @a run scoreboard players operation @s pkw2_extrascore *= @s pkw2_selfmulti
scoreboard players operation @a pkw2_extrascore /= 100 math

tellraw @a[team=!spec] [{"color":"green","text":"———————————————————————————————————"}]

tellraw @a[team=red] ["","§l团队积分:  ",{"score":{"name": "red","objective": "pkw2_teamscore"},"color": "green"}]
tellraw @a[team=blue] ["","§l团队积分:  ",{"score":{"name": "blue","objective": "pkw2_teamscore"},"color": "green"}]
tellraw @a[team=green] ["","§l团队积分:  ",{"score":{"name": "green","objective": "pkw2_teamscore"},"color": "green"}]
tellraw @a[team=yellow] ["","§l团队积分:  ",{"score":{"name": "yellow","objective": "pkw2_teamscore"},"color": "green"}]
tellraw @a[team=cyan] ["","§l团队积分:  ",{"score":{"name": "cyan","objective": "pkw2_teamscore"},"color": "green"}]
tellraw @a[team=orange] ["","§l团队积分:  ",{"score":{"name": "orange","objective": "pkw2_teamscore"},"color": "green"}]
tellraw @a[team=pink] ["","§l团队积分:  ",{"score":{"name": "pink","objective": "pkw2_teamscore"},"color": "green"}]
tellraw @a[team=purple] ["","§l团队积分:  ",{"score":{"name": "purple","objective": "pkw2_teamscore"},"color": "green"}]

tellraw @a[team=!spec] ""

execute as @a[team=red,tag=!easyComplete,tag=!mediumComplete,tag=!hardComplete] run tellraw @a[team=red] ["",{"selector":"@s"}," §7没有完成最终关"," +0.00x"]
execute as @a[team=red,tag=easyComplete] run tellraw @a[team=red] ["",{"selector":"@s"}," 完成了§a简单§r难度的最终关"," +0.15x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=red,tag=mediumComplete] run tellraw @a[team=red] ["",{"selector":"@s"}," 完成了§6中等§r难度的最终关"," +0.35x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=red,tag=hardComplete] run tellraw @a[team=red] ["",{"selector":"@s"}," 完成了§c困难§r难度的最终关"," +0.80x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]

execute as @a[team=blue,tag=!easyComplete,tag=!mediumComplete,tag=!hardComplete] run tellraw @a[team=blue] ["",{"selector":"@s"}," §7没有完成最终关"," +0.00x"]
execute as @a[team=blue,tag=easyComplete] run tellraw @a[team=blue] ["",{"selector":"@s"}," 完成了§a简单§r难度的最终关"," +0.15x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=blue,tag=mediumComplete] run tellraw @a[team=blue] ["",{"selector":"@s"}," 完成了§6中等§r难度的最终关"," +0.35x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=blue,tag=hardComplete] run tellraw @a[team=blue] ["",{"selector":"@s"}," 完成了§c困难§r难度的最终关"," +0.80x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]


execute as @a[team=green,tag=!easyComplete,tag=!mediumComplete,tag=!hardComplete] run tellraw @a[team=green] ["",{"selector":"@s"}," §7没有完成最终关"," +0.00x"]
execute as @a[team=green,tag=easyComplete] run tellraw @a[team=green] ["",{"selector":"@s"}," 完成了§a简单§r难度的最终关"," +0.15x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=green,tag=mediumComplete] run tellraw @a[team=green] ["",{"selector":"@s"}," 完成了§6中等§r难度的最终关"," +0.35x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=green,tag=hardComplete] run tellraw @a[team=green] ["",{"selector":"@s"}," 完成了§c困难§r难度的最终关"," +0.80x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]

execute as @a[team=yellow,tag=!easyComplete,tag=!mediumComplete,tag=!hardComplete] run tellraw @a[team=yellow] ["",{"selector":"@s"}," §7没有完成最终关"," +0.00x"]
execute as @a[team=yellow,tag=easyComplete] run tellraw @a[team=yellow] ["",{"selector":"@s"}," 完成了§a简单§r难度的最终关"," +0.15x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=yellow,tag=mediumComplete] run tellraw @a[team=yellow] ["",{"selector":"@s"}," 完成了§6中等§r难度的最终关"," +0.35x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=yellow,tag=hardComplete] run tellraw @a[team=yellow] ["",{"selector":"@s"}," 完成了§c困难§r难度的最终关"," +0.80x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]

execute as @a[team=cyan,tag=!easyComplete,tag=!mediumComplete,tag=!hardComplete] run tellraw @a[team=cyan] ["",{"selector":"@s"}," §7没有完成最终关"," +0.00x"]
execute as @a[team=cyan,tag=easyComplete] run tellraw @a[team=cyan] ["",{"selector":"@s"}," 完成了§a简单§r难度的最终关"," +0.15x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=cyan,tag=mediumComplete] run tellraw @a[team=cyan] ["",{"selector":"@s"}," 完成了§6中等§r难度的最终关"," +0.35x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=cyan,tag=hardComplete] run tellraw @a[team=cyan] ["",{"selector":"@s"}," 完成了§c困难§r难度的最终关"," +0.80x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]

execute as @a[team=orange,tag=!easyComplete,tag=!mediumComplete,tag=!hardComplete] run tellraw @a[team=orange] ["",{"selector":"@s"}," §7没有完成最终关"," +0.00x"]
execute as @a[team=orange,tag=easyComplete] run tellraw @a[team=orange] ["",{"selector":"@s"}," 完成了§a简单§r难度的最终关"," +0.15x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=orange,tag=mediumComplete] run tellraw @a[team=orange] ["",{"selector":"@s"}," 完成了§6中等§r难度的最终关"," +0.35x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=orange,tag=hardComplete] run tellraw @a[team=orange] ["",{"selector":"@s"}," 完成了§c困难§r难度的最终关"," +0.80x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]

execute as @a[team=pink,tag=!easyComplete,tag=!mediumComplete,tag=!hardComplete] run tellraw @a[team=pink] ["",{"selector":"@s"}," §7没有完成最终关"," +0.00x"]
execute as @a[team=pink,tag=easyComplete] run tellraw @a[team=pink] ["",{"selector":"@s"}," 完成了§a简单§r难度的最终关"," +0.15x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=pink,tag=mediumComplete] run tellraw @a[team=pink] ["",{"selector":"@s"}," 完成了§6中等§r难度的最终关"," +0.35x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=pink,tag=hardComplete] run tellraw @a[team=pink] ["",{"selector":"@s"}," 完成了§c困难§r难度的最终关"," +0.80x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]

execute as @a[team=purple,tag=!easyComplete,tag=!mediumComplete,tag=!hardComplete] run tellraw @a[team=purple] ["",{"selector":"@s"}," §7没有完成最终关"," +0.00x"]
execute as @a[team=purple,tag=easyComplete] run tellraw @a[team=purple] ["",{"selector":"@s"}," 完成了§a简单§r难度的最终关"," +0.15x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=purple,tag=mediumComplete] run tellraw @a[team=purple] ["",{"selector":"@s"}," 完成了§6中等§r难度的最终关"," +0.35x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]
execute as @a[team=purple,tag=hardComplete] run tellraw @a[team=purple] ["",{"selector":"@s"}," 完成了§c困难§r难度的最终关"," +0.80x"," (§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color":"gold"},"§6分§r)"]

tellraw @a[team=!spec] ""

execute as @a[team=red] run scoreboard players operation red pkw2_teamscore += @s pkw2_extrascore
execute as @a[team=blue] run scoreboard players operation blue pkw2_teamscore += @s pkw2_extrascore
execute as @a[team=green] run scoreboard players operation green pkw2_teamscore += @s pkw2_extrascore
execute as @a[team=yellow] run scoreboard players operation yellow pkw2_teamscore += @s pkw2_extrascore
execute as @a[team=cyan] run scoreboard players operation cyan pkw2_teamscore += @s pkw2_extrascore
execute as @a[team=orange] run scoreboard players operation orange pkw2_teamscore += @s pkw2_extrascore
execute as @a[team=pink] run scoreboard players operation pink pkw2_teamscore += @s pkw2_extrascore
execute as @a[team=purple] run scoreboard players operation purple pkw2_teamscore += @s pkw2_extrascore

execute as @a[team=red] run tellraw @s ["[§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color": "gold"},"§6分§r] ","§l团队最终得分:  ",{"score":{"name": "red","objective": "pkw2_teamscore"},"color": "green"}]
execute as @a[team=blue] run tellraw @s ["[§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color": "gold"},"§6分§r] ","§l团队最终得分:  ",{"score":{"name": "blue","objective": "pkw2_teamscore"},"color": "green"}]
execute as @a[team=green] run tellraw @s ["[§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color": "gold"},"§6分§r] ","§l团队最终得分:  ",{"score":{"name": "green","objective": "pkw2_teamscore"},"color": "green"}]
execute as @a[team=yellow] run tellraw @s ["[§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color": "gold"},"§6分§r] ","§l团队最终得分:  ",{"score":{"name": "yellow","objective": "pkw2_teamscore"},"color": "green"}]
execute as @a[team=orange] run tellraw @s ["[§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color": "gold"},"§6分§r] ","§l团队最终得分:  ",{"score":{"name": "orange","objective": "pkw2_teamscore"},"color": "green"}]
execute as @a[team=pink] run tellraw @s ["[§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color": "gold"},"§6分§r] ","§l团队最终得分:  ",{"score":{"name": "pink","objective": "pkw2_teamscore"},"color": "green"}]
execute as @a[team=purple] run tellraw @s ["[§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color": "gold"},"§6分§r] ","§l团队最终得分:  ",{"score":{"name": "purple","objective": "pkw2_teamscore"},"color": "green"}]
execute as @a[team=cyan] run tellraw @s ["[§6+§r",{"score":{"name": "@s","objective": "pkw2_extrascore"},"color": "gold"},"§6分§r] ","§l团队最终得分:  ",{"score":{"name": "cyan","objective": "pkw2_teamscore"},"color": "green"}]

execute as @a run scoreboard players operation @s pkw2_indvscore += @s pkw2_extrascore
tellraw @a[team=!spec] [{"color":"green","text":"———————————————————————————————————"}]

execute as @a[team=!spec] at @s run playsound minecraft:sound.majoracquire record @s
execute as @a[team=!spec,scores={pkw2_extrascore=1..}] at @s run playsound minecraft:sound.bigcoins record @s

function pkw2:scoreboard/refreshend
# Uniform the results and store into the Total scores

scoreboard players operation red pkw2_teamscore *= multiplier1 tourney_stats
scoreboard players operation red pkw2_teamscore /= multiplier2 tourney_stats

scoreboard players operation blue pkw2_teamscore *= multiplier1 tourney_stats
scoreboard players operation blue pkw2_teamscore /= multiplier2 tourney_stats

scoreboard players operation green pkw2_teamscore *= multiplier1 tourney_stats
scoreboard players operation green pkw2_teamscore /= multiplier2 tourney_stats

scoreboard players operation yellow pkw2_teamscore *= multiplier1 tourney_stats
scoreboard players operation yellow pkw2_teamscore /= multiplier2 tourney_stats

scoreboard players operation cyan pkw2_teamscore *= multiplier1 tourney_stats
scoreboard players operation cyan pkw2_teamscore /= multiplier2 tourney_stats

scoreboard players operation orange pkw2_teamscore *= multiplier1 tourney_stats
scoreboard players operation orange pkw2_teamscore /= multiplier2 tourney_stats

scoreboard players operation purple pkw2_teamscore *= multiplier1 tourney_stats
scoreboard players operation purple pkw2_teamscore /= multiplier2 tourney_stats

scoreboard players operation pink pkw2_teamscore *= multiplier1 tourney_stats
scoreboard players operation pink pkw2_teamscore /= multiplier2 tourney_stats

# Negative Multi Init
execute if score multiplier1 tourney_stats matches ..-1 run data modify storage master:negative_multi namespace set value "pkw2_teamscore"
execute if score multiplier1 tourney_stats matches ..-1 run function master:negative_multi/init with storage master:negative_multi

scoreboard players operation 红队 overallscore += red pkw2_teamscore
scoreboard players operation 蓝队 overallscore += blue pkw2_teamscore
scoreboard players operation 绿队 overallscore += green pkw2_teamscore
scoreboard players operation 黄队 overallscore += yellow pkw2_teamscore
scoreboard players operation 青队 overallscore += cyan pkw2_teamscore
scoreboard players operation 橙队 overallscore += orange pkw2_teamscore
scoreboard players operation 紫队 overallscore += purple pkw2_teamscore
scoreboard players operation 粉队 overallscore += pink pkw2_teamscore

scoreboard players operation red GameRankTarget = red pkw2_teamscore
scoreboard players operation blue GameRankTarget = blue pkw2_teamscore
scoreboard players operation green GameRankTarget = green pkw2_teamscore
scoreboard players operation yellow GameRankTarget = yellow pkw2_teamscore
scoreboard players operation cyan GameRankTarget = cyan pkw2_teamscore
scoreboard players operation orange GameRankTarget = orange pkw2_teamscore
scoreboard players operation purple GameRankTarget = purple pkw2_teamscore
scoreboard players operation pink GameRankTarget = pink pkw2_teamscore

function utils:personal/update

execute as @a[team=!spec] run scoreboard players operation @s tourney_indv += @s pkw2_indvscore
execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s pkw2_indvscore
function utils:rankstart

schedule function utils:text/gamescore 4s
schedule function utils:text/mvp 14s
schedule function pkw2:mvp 16s
schedule function utils:text/eventstandings 24s

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §fGame Ended! Each player completed stages:"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
execute as @a[team=!spec] run tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "pkw2_main"}},"-",{"score":{"name": "@s","objective": "pkw2_bonus1"}},"-",{"score":{"name": "@s","objective": "pkw2_bonus2"}},"-",{"score":{"name": "@s","objective": "pkw2_bonus3"}},"-",{"score":{"name": "@s","objective": "pkw2_bonus4"}},"-",{"score":{"name": "@s","objective": "pkw2_bonus5"}}]
tellraw @a[tag=_transcript] ["  §bTranscript >> Easy Ending: ",{"selector":"@a[tag=easyComplete]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> Medium Ending: ",{"selector":"@a[tag=mediumComplete]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> Hard Ending: ",{"selector":"@a[tag=hardComplete]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> DNF: ",{"selector":"@a[team=!spec,tag=!easyComplete,tag=!mediumComplete,tag=!hardComplete]"}]

# Cleanup
tag @a remove counted
tag @a remove easyComplete
tag @a remove mediumComplete
tag @a remove hardComplete