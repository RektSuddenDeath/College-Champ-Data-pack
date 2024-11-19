
# Lap time saved
execute if score @s ar_laps matches 1 run scoreboard players operation @s ar_lap1time = @s ar_laptime
execute if score @s ar_laps matches 2 run scoreboard players operation @s ar_lap2time = @s ar_laptime

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

# Adds a lap, titles the player
execute at @s run playsound minecraft:sound.lapcomplete record @s ~ ~ ~ 2
scoreboard players add @s ar_laps 1
title @s times 10 40 10
title @s title ["§a第",{"score":{"name": "@s","objective": "ar_laps"},"color": "green"},"§a/3圈"]

# Add score
scoreboard players operation @s ar_indvscore += 完成一圈 acerace_stats

# Clean up
tag @s remove ar_finishlap
scoreboard players set @s ar_cp 0
scoreboard players set @s ar_laptime 0