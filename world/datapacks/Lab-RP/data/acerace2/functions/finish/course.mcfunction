
# Lap time saved
execute if score @s ar_laps matches 3 run scoreboard players operation @s ar_lap3time = @s ar_laptime

# calculate the actual time for the lap
scoreboard players operation @s ar_temp1 = @s ar_laptime
scoreboard players operation @s ar_temp2 = @s ar_laptime
scoreboard players operation @s ar_temp3 = @s ar_laptime

# Minute (60,000ms)
scoreboard players operation @s ar_temp1 /= 6000 math

# Second (1,000ms)
scoreboard players operation @s ar_temp2 %= 6000 math
scoreboard players operation @s ar_temp2 /= 100 math

# Milisec
scoreboard players operation @s ar_temp3 %= 100 math

# Broadcast the lap result to all players.
tag @s add me
execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @a[tag=!me] ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "完成了第","color": "gray"},{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua"},{"text": "/3","color": "aqua"},{"text":"圈","color":"gray"},{"text": "，用时","color": "gray"},{"score":{"name": "@s","objective": "ar_temp1"},"color": "yellow"},{"text": ":0","color": "yellow"},{"score":{"name": "@s","objective": "ar_temp2"},"color": "yellow"},{"text": ".0","color": "yellow"},{"score":{"name": "@s","objective": "ar_temp3"},"color": "yellow"},{"text": "!","color": "gray"}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @a[tag=!me] ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "完成了第","color": "gray"},{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua"},{"text": "/3","color": "aqua"},{"text":"圈","color":"gray"},{"text": "，用时","color": "gray"},{"score":{"name": "@s","objective": "ar_temp1"},"color": "yellow"},{"text": ":","color": "yellow"},{"score":{"name": "@s","objective": "ar_temp2"},"color": "yellow"},{"text": ".0","color": "yellow"},{"score":{"name": "@s","objective": "ar_temp3"},"color": "yellow"},{"text": "!","color": "gray"}]
execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @a[tag=!me] ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "完成了第","color": "gray"},{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua"},{"text": "/3","color": "aqua"},{"text":"圈","color":"gray"},{"text": "，用时","color": "gray"},{"score":{"name": "@s","objective": "ar_temp1"},"color": "yellow"},{"text": ":0","color": "yellow"},{"score":{"name": "@s","objective": "ar_temp2"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "@s","objective": "ar_temp3"},"color": "yellow"},{"text": "!","color": "gray"}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @a[tag=!me] ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "完成了第","color": "gray"},{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua"},{"text": "/3","color": "aqua"},{"text":"圈","color":"gray"},{"text": "，用时","color": "gray"},{"score":{"name": "@s","objective": "ar_temp1"},"color": "yellow"},{"text": ":","color": "yellow"},{"score":{"name": "@s","objective": "ar_temp2"},"color": "yellow"},{"text": ".","color": "yellow"},{"score":{"name": "@s","objective": "ar_temp3"},"color": "yellow"},{"text": "!","color": "gray"}]

execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @s ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"text": "你完成了第","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua","bold": true},{"text": "/3圈","color": "aqua","bold": true},{"text": "，用时","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_temp1"},"color": "yellow","bold": true},{"text": ":0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_temp2"},"color": "yellow","bold": true},{"text": ".0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_temp3"},"color": "yellow","bold": true},{"text": "!","color": "green","bold": true}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @s ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"text": "你完成了第","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua","bold": true},{"text": "/3圈","color": "aqua","bold": true},{"text": "，用时","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_temp1"},"color": "yellow","bold": true},{"text": ":","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_temp2"},"color": "yellow","bold": true},{"text": ".0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_temp3"},"color": "yellow","bold": true},{"text": "!","color": "green","bold": true}]
execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @s ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"text": "你完成了第","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua","bold": true},{"text": "/3圈","color": "aqua","bold": true},{"text": "，用时","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_temp1"},"color": "yellow","bold": true},{"text": ":0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_temp2"},"color": "yellow","bold": true},{"text": ".","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_temp3"},"color": "yellow","bold": true},{"text": "!","color": "green","bold": true}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @s ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"text": "你完成了第","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_laps"},"color": "aqua","bold": true},{"text": "/3圈","color": "aqua","bold": true},{"text": "，用时","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_temp1"},"color": "yellow","bold": true},{"text": ":","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_temp2"},"color": "yellow","bold": true},{"text": ".","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_temp3"},"color": "yellow","bold": true},{"text": "!","color": "green","bold": true}]
tag @s remove me

# Decides if the result is eligible for any of the best lap position.
execute if score @s ar_laptime < 1 ar_bestlaptime run function acerace2:bestlap/1
execute if score @s ar_laptime < 2 ar_bestlaptime if score @s ar_laptime > 1 ar_bestlaptime run function acerace2:bestlap/2
execute if score @s ar_laptime < 3 ar_bestlaptime if score @s ar_laptime > 2 ar_bestlaptime run function acerace2:bestlap/3
execute if score @s ar_laptime < 4 ar_bestlaptime if score @s ar_laptime > 3 ar_bestlaptime run function acerace2:bestlap/4
execute if score @s ar_laptime < 5 ar_bestlaptime if score @s ar_laptime > 4 ar_bestlaptime run function acerace2:bestlap/5

# Tied?
execute if score @s ar_indvtime = 1 ar_bestlaptime run tag @s add ar_pos1
execute if score @s ar_indvtime = 2 ar_bestlaptime run tag @s add ar_pos2
execute if score @s ar_indvtime = 3 ar_bestlaptime run tag @s add ar_pos3
execute if score @s ar_indvtime = 4 ar_bestlaptime run tag @s add ar_pos4
execute if score @s ar_indvtime = 5 ar_bestlaptime run tag @s add ar_pos5

# Titles the player about completion
execute at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~ 2
execute at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 2

# Tell other player and self for completion, also stores the final result
scoreboard players operation @s ar_finaltime_min = ms ar_totaltime
scoreboard players operation @s ar_finaltime_sec = ms ar_totaltime
scoreboard players operation @s ar_finaltime_ms = ms ar_totaltime

scoreboard players operation @s ar_finaltime_min /= 6000 math
scoreboard players operation @s ar_finaltime_sec %= 6000 math
scoreboard players operation @s ar_finaltime_sec /= 100 math
scoreboard players operation @s ar_finaltime_ms %= 100 math

# Ranking

scoreboard players add completedplayers ar_game 1
scoreboard players operation @s mvprank = completedplayers ar_game

tag @s add me
execute if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 0..9 run tellraw @a[tag=!me] ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "第","color": "gray","bold": true},{"score":{"name": "@s","objective": "mvprank"},"bold": true,"color": "aqua"},{"text": "个完成了全部比赛！用时: ","color": "gray","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_min"},"color": "yellow","bold": true},{"text": ":0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_sec"},"color": "yellow","bold": true},{"text": ".0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_ms"},"color": "yellow","bold": true},{"text": "!","color": "gray","bold": true}]
execute if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 0..9 run tellraw @a[tag=!me] ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "第","color": "gray","bold": true},{"score":{"name": "@s","objective": "mvprank"},"bold": true,"color": "aqua"},{"text": "个完成了全部比赛！用时: ","color": "gray","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_min"},"color": "yellow","bold": true},{"text": ":","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_sec"},"color": "yellow","bold": true},{"text": ".0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_ms"},"color": "yellow","bold": true},{"text": "!","color": "gray","bold": true}]
execute if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 10..99 run tellraw @a[tag=!me] ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "第","color": "gray","bold": true},{"score":{"name": "@s","objective": "mvprank"},"bold": true,"color": "aqua"},{"text": "个完成了全部比赛！用时: ","color": "gray","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_min"},"color": "yellow","bold": true},{"text": ":0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_sec"},"color": "yellow","bold": true},{"text": ".","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_ms"},"color": "yellow","bold": true},{"text": "!","color": "gray","bold": true}]
execute if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 10..99 run tellraw @a[tag=!me] ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"selector":"@s"},{"text": "第","color": "gray","bold": true},{"score":{"name": "@s","objective": "mvprank"},"bold": true,"color": "aqua"},{"text": "个完成了全部比赛！用时: ","color": "gray","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_min"},"color": "yellow","bold": true},{"text": ":","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_sec"},"color": "yellow","bold": true},{"text": ".","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_ms"},"color": "yellow","bold": true},{"text": "!","color": "gray","bold": true}]

execute if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 0..9 run tellraw @s ["","[§6+",{"score":{"name": "当前完赛","objective": "acerace_stats"},"color": "gold"},"§6分","] ",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"text":"你第","bold": true,"color": "green"},{"score":{"name": "@s","objective": "mvprank"},"bold": true,"color": "aqua"},{"text": "个完成了全部比赛！","color": "green","bold": true},{"text": "用时","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_min"},"color": "yellow","bold": true},{"text": ":0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_sec"},"color": "yellow","bold": true},{"text": ".0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_ms"},"color": "yellow","bold": true},{"text": "!","color": "green","bold": true}]
execute if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 0..9 run tellraw @s ["","[§6+",{"score":{"name": "当前完赛","objective": "acerace_stats"},"color": "gold"},"§6分","] ",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"text":"你第","bold": true,"color": "green"},{"score":{"name": "@s","objective": "mvprank"},"bold": true,"color": "aqua"},{"text": "个完成了全部比赛！","color": "green","bold": true},{"text": "用时","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_min"},"color": "yellow","bold": true},{"text": ":","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_sec"},"color": "yellow","bold": true},{"text": ".0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_ms"},"color": "yellow","bold": true},{"text": "!","color": "green","bold": true}]
execute if score @s ar_finaltime_sec matches 0..9 if score @s ar_finaltime_ms matches 10..99 run tellraw @s ["","[§6+",{"score":{"name": "当前完赛","objective": "acerace_stats"},"color": "gold"},"§6分","] ",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"text":"你第","bold": true,"color": "green"},{"score":{"name": "@s","objective": "mvprank"},"bold": true,"color": "aqua"},{"text": "个完成了全部比赛！","color": "green","bold": true},{"text": "用时","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_min"},"color": "yellow","bold": true},{"text": ":0","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_sec"},"color": "yellow","bold": true},{"text": ".","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_ms"},"color": "yellow","bold": true},{"text": "!","color": "green","bold": true}]
execute if score @s ar_finaltime_sec matches 10..59 if score @s ar_finaltime_ms matches 10..99 run tellraw @s ["","[§6+",{"score":{"name": "当前完赛","objective": "acerace_stats"},"color": "gold"},"§6分","] ",{"text": "["},{"text": "▶","color":"yellow"},{"text": "] "},{"text":"你第","bold": true,"color": "green"},{"score":{"name": "@s","objective": "mvprank"},"bold": true,"color": "aqua"},{"text": "个完成了全部比赛！","color": "green","bold": true},{"text": "用时","color": "green","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_min"},"color": "yellow","bold": true},{"text": ":","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_sec"},"color": "yellow","bold": true},{"text": ".","color": "yellow","bold": true},{"score":{"name": "@s","objective": "ar_finaltime_ms"},"color": "yellow","bold": true},{"text": "!","color": "green","bold": true}]
tag @s remove me
# Adds score
scoreboard players operation @s ar_indvscore += 完成一圈 acerace_stats
scoreboard players operation @s ar_indvscore += 当前完赛 acerace_stats
scoreboard players operation 当前完赛 acerace_stats -= 后完赛递减 acerace_stats


# Removes the player from the game
scoreboard players set @s ar_laps 0
clear @s
gamemode spectator @s

# Adds extra bonus
scoreboard players add @s[scores={mvprank=1}] ar_indvscore 280
scoreboard players add @s[scores={mvprank=2}] ar_indvscore 210
scoreboard players add @s[scores={mvprank=3}] ar_indvscore 165
scoreboard players add @s[scores={mvprank=4}] ar_indvscore 120
scoreboard players add @s[scores={mvprank=5}] ar_indvscore 80

tellraw @s[scores={mvprank=1}] ["","[","§6+280分","] ",{"text": "排行额外奖励！","color": "green"}]
tellraw @s[scores={mvprank=2}] ["","[","§6+210分","] ",{"text": "排行额外奖励！","color": "green"}]
tellraw @s[scores={mvprank=3}] ["","[","§6+165分","] ",{"text": "排行额外奖励！","color": "green"}]
tellraw @s[scores={mvprank=4}] ["","[","§6+120分","] ",{"text": "排行额外奖励！","color": "green"}]
tellraw @s[scores={mvprank=5}] ["","[","§6+80分","] ",{"text": "排行额外奖励！","color": "green"}]

# fetch personal lap times
tellraw @s ["",{"text": "本场各圈用时: ","color": "green","bold": true}]
# Lap 1
## calculate the actual time for the lap
scoreboard players operation @s ar_temp1 = @s ar_lap1time
scoreboard players operation @s ar_temp2 = @s ar_lap1time
scoreboard players operation @s ar_temp3 = @s ar_lap1time

## Minute (60,000ms)
scoreboard players operation @s ar_temp1 /= 6000 math

## Second (1,000ms)
scoreboard players operation @s ar_temp2 %= 6000 math
scoreboard players operation @s ar_temp2 /= 100 math

## Milisec
scoreboard players operation @s ar_temp3 %= 100 math

## Say
execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":0"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": ".0"},{"score":{"name": "@s","objective": "ar_temp3"}}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": ".0"},{"score":{"name": "@s","objective": "ar_temp3"}}]
execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":0"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": "."},{"score":{"name": "@s","objective": "ar_temp3"}}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": "."},{"score":{"name": "@s","objective": "ar_temp3"}}]

# Lap2
## calculate the actual time for the lap
scoreboard players operation @s ar_temp1 = @s ar_lap2time
scoreboard players operation @s ar_temp2 = @s ar_lap2time
scoreboard players operation @s ar_temp3 = @s ar_lap2time

## Minute (60,000ms)
scoreboard players operation @s ar_temp1 /= 6000 math

## Second (1,000ms)
scoreboard players operation @s ar_temp2 %= 6000 math
scoreboard players operation @s ar_temp2 /= 100 math

## Milisec
scoreboard players operation @s ar_temp3 %= 100 math

## Say
execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":0"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": ".0"},{"score":{"name": "@s","objective": "ar_temp3"}}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": ".0"},{"score":{"name": "@s","objective": "ar_temp3"}}]
execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":0"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": "."},{"score":{"name": "@s","objective": "ar_temp3"}}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": "."},{"score":{"name": "@s","objective": "ar_temp3"}}]

# Lap3
## calculate the actual time for the lap
scoreboard players operation @s ar_temp1 = @s ar_lap3time
scoreboard players operation @s ar_temp2 = @s ar_lap3time
scoreboard players operation @s ar_temp3 = @s ar_lap3time

## Minute (60,000ms)
scoreboard players operation @s ar_temp1 /= 6000 math

## Second (1,000ms)
scoreboard players operation @s ar_temp2 %= 6000 math
scoreboard players operation @s ar_temp2 /= 100 math

## Milisec
scoreboard players operation @s ar_temp3 %= 100 math

## Say
execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 0..9 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":0"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": ".0"},{"score":{"name": "@s","objective": "ar_temp3"}}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 0..9 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": ".0"},{"score":{"name": "@s","objective": "ar_temp3"}}]
execute if score @s ar_temp2 matches 0..9 if score @s ar_temp3 matches 10..99 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":0"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": "."},{"score":{"name": "@s","objective": "ar_temp3"}}]
execute if score @s ar_temp2 matches 10..59 if score @s ar_temp3 matches 10..99 run tellraw @s ["- ",{"score":{"name": "@s","objective": "ar_temp1"}},{"text": ":"},{"score":{"name": "@s","objective": "ar_temp2"}},{"text": "."},{"score":{"name": "@s","objective": "ar_temp3"}}]

# Cleanup
tag @s remove ar_finishcourse
scoreboard players set @s ar_cp 0

# Plays Overtime, if there are less than 3 players left, when there are more than 10 players.
scoreboard players operation $unfinished ar_game = liveplayers ar_game
scoreboard players operation $unfinished ar_game -= completedplayers ar_game

execute unless score OvertimeActive OvertimeMusic matches 1 if score $unfinished ar_game matches 1..2 if score liveplayers ar_game matches 11.. run function master:overtime/init