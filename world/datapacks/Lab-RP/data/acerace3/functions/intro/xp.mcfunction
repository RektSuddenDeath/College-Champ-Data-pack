# execute if score pause master.timer matches 0 run xp add @a -1 levels
# execute if score pause master.timer matches 0 run scoreboard players add xp ar_intro 1
# execute if score xp ar_intro matches 0..60 run schedule function acerace:intro/xp 1s
# execute if score xp ar_intro matches 61 run scoreboard players set xp ar_intro 0