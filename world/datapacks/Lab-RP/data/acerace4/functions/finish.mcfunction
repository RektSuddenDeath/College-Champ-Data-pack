
# Removes Spawn Point from the Ice level.
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=!spec] run tag @s remove ar_cp1

#According to team, give Lap bonus

execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=red] at @s if score @s ar_cp2 matches 1 run scoreboard players operation red ar_results += 完成一圈 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=blue] at @s if score @s ar_cp2 matches 1 run scoreboard players operation blue ar_results += 完成一圈 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=green] at @s if score @s ar_cp2 matches 1 run scoreboard players operation green ar_results += 完成一圈 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=yellow] at @s if score @s ar_cp2 matches 1 run scoreboard players operation yellow ar_results += 完成一圈 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=cyan] at @s if score @s ar_cp2 matches 1 run scoreboard players operation cyan ar_results += 完成一圈 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=purple] at @s if score @s ar_cp2 matches 1 run scoreboard players operation purple ar_results += 完成一圈 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=orange] at @s if score @s ar_cp2 matches 1 run scoreboard players operation orange ar_results += 完成一圈 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=pink] at @s if score @s ar_cp2 matches 1 run scoreboard players operation pink ar_results += 完成一圈 acerace_stats

execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_laps matches 1 run tellraw @a [{"text":"[ ","color":"yellow"},{"text":"⚑","color":"aqua"},{"text":" ] ","color":"yellow"},{"selector":"@s"},{"text":"完成了第","color":"white"},{"text":"1","color":"aqua"},{"text":"圈，用时","color":"white"},{"score":{"objective":"ar_indvtime","name":"@s"},"color":"yellow"},{"text":"秒","color":"yellow"}]
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_laps matches 2 run tellraw @a [{"text":"[ ","color":"yellow"},{"text":"⚑","color":"aqua"},{"text":" ] ","color":"yellow"},{"selector":"@s"},{"text":"完成了第","color":"white"},{"text":"2","color":"gold"},{"text":"圈，用时","color":"white"},{"score":{"objective":"ar_indvtime","name":"@s"},"color":"yellow"},{"text":"秒","color":"yellow"}]
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_laps matches 3 run tellraw @a [{"text":"[ ","color":"yellow"},{"text":"⚑","color":"aqua"},{"text":" ] ","color":"yellow"},{"selector":"@s"},{"text":"完成了第","color":"white"},{"text":"3","color":"green"},{"text":"圈，用时","color":"white"},{"score":{"objective":"ar_indvtime","name":"@s"},"color":"yellow"},{"text":"秒","color":"yellow"}]

#region Decides if this player's score is qualified for any of the fastest lap position, Sometimes moving a player downwards a position
#region pos1
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @a[tag=ar_pos5] remove ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @a[tag=ar_pos4] add ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @a[tag=ar_pos4] remove ar_pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @a[tag=ar_pos3] add ar_pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @a[tag=ar_pos3] remove ar_pos3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @a[tag=ar_pos2] add ar_pos3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @a[tag=ar_pos2] remove ar_pos2
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @a[tag=ar_pos1] add ar_pos2
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @a[tag=ar_pos1] remove ar_pos1
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run tag @s add ar_pos1
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run scoreboard players operation 5 mvp3 = 4 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run scoreboard players operation 4 mvp3 = 3 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run scoreboard players operation 3 mvp3 = 2 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run scoreboard players operation 2 mvp3 = 1 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime < 1 mvp3 run scoreboard players operation 1 mvp3 = @s ar_indvtime
#endregion

#region pos2
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run tag @a[tag=ar_pos5] remove ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run tag @a[tag=ar_pos4] add ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run tag @a[tag=ar_pos4] remove ar_pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run tag @a[tag=ar_pos3] add ar_pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run tag @a[tag=ar_pos3] remove ar_pos3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run tag @a[tag=ar_pos2] add ar_pos3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run tag @a[tag=ar_pos2] remove ar_pos2
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run tag @s add ar_pos2
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run scoreboard players operation 5 mvp3 = 4 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run scoreboard players operation 4 mvp3 = 3 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run scoreboard players operation 3 mvp3 = 2 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 1 mvp3 if score @s ar_indvtime < 2 mvp3 run scoreboard players operation 2 mvp3 = @s ar_indvtime
#endregion

#region pos3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 2 mvp3 if score @s ar_indvtime < 3 mvp3 run tag @a[tag=ar_pos5] remove ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 2 mvp3 if score @s ar_indvtime < 3 mvp3 run tag @a[tag=ar_pos4] add ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 2 mvp3 if score @s ar_indvtime < 3 mvp3 run tag @a[tag=ar_pos4] remove ar_pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 2 mvp3 if score @s ar_indvtime < 3 mvp3 run tag @a[tag=ar_pos3] add ar_pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 2 mvp3 if score @s ar_indvtime < 3 mvp3 run tag @a[tag=ar_pos3] remove ar_pos3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 2 mvp3 if score @s ar_indvtime < 3 mvp3 run tag @s add ar_pos3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 2 mvp3 if score @s ar_indvtime < 3 mvp3 run scoreboard players operation 5 mvp3 = 4 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 2 mvp3 if score @s ar_indvtime < 3 mvp3 run scoreboard players operation 4 mvp3 = 3 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 2 mvp3 if score @s ar_indvtime < 3 mvp3 run scoreboard players operation 3 mvp3 = @s ar_indvtime
#endregion

#region pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 3 mvp3 if score @s ar_indvtime < 4 mvp3 run tag @a[tag=ar_pos5] remove ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 3 mvp3 if score @s ar_indvtime < 4 mvp3 run tag @a[tag=ar_pos4] add ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 3 mvp3 if score @s ar_indvtime < 4 mvp3 run tag @a[tag=ar_pos4] remove ar_pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 3 mvp3 if score @s ar_indvtime < 4 mvp3 run tag @s add ar_pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 3 mvp3 if score @s ar_indvtime < 4 mvp3 run scoreboard players operation 5 mvp3 = 4 mvp3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 3 mvp3 if score @s ar_indvtime < 4 mvp3 run scoreboard players operation 4 mvp3 = @s ar_indvtime
#endregion

#region pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 4 mvp3 if score @s ar_indvtime < 5 mvp3 run tag @a[tag=ar_pos5] remove ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 4 mvp3 if score @s ar_indvtime < 5 mvp3 run tag @s add ar_pos5
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime > 4 mvp3 if score @s ar_indvtime < 5 mvp3 run scoreboard players operation 5 mvp3 = @s ar_indvtime
#endregion

#region tied
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime = 1 mvp3 run tag @s add ar_pos1
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime = 2 mvp3 run tag @s add ar_pos2
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime = 3 mvp3 run tag @s add ar_pos3
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime = 4 mvp3 run tag @s add ar_pos4
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 if score @s ar_indvtime = 5 mvp3 run tag @s add ar_pos5
#endregion

#endregion

# Removes Checkpoint status
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 run scoreboard players add @s ar_laps 1
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 run scoreboard players set @s ar_indvtime 0
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_cp2 matches 1 run scoreboard players set @s ar_cp2 0

# Gives player notice about his current standings
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s run title @s times 0 40 10
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s run title @s title " "
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 2 run title @s subtitle [{"text":"第二圈","color":"gold","bold":true}]
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 3 run title @s subtitle [{"text":"第三圈","color":"gold","bold":true}]

# This will define the player's progress. Giving title if he is on Lap 2 or 3, finishing if he is on Lap 4
#If the player has completed, the following items will be executed, according to team. Finally clear the completed player's progress

execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run scoreboard players add completedplayers ar_game 1
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run scoreboard players operation @s mvprank = completedplayers ar_game
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run scoreboard players operation @s mvp = minute ar_time
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run scoreboard players operation @s mvp2 = second ar_time
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 if score second ar_time matches 0..9 run tellraw @a [{"text":"[ ","color":"white"},{"text":"⚑","color":"gold"},{"text":" ] ","color":"white"},{"selector":"@s"},{"text":"第","color":"white"},{"score":{"objective":"ar_game","name":"completedplayers"},"color":"gold","bold":true},{"text":"个完成了全部挑战！用时","color":"white","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"objective":"ar_time","name":"second"},"color":"aqua"},{"text":"!","color":"white"}]
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 if score second ar_time matches 10..60 run tellraw @a [{"text":"[ ","color":"white"},{"text":"⚑","color":"gold"},{"text":" ] ","color":"white"},{"selector":"@s"},{"text":"第","color":"white"},{"score":{"objective":"ar_game","name":"completedplayers"},"color":"gold","bold":true},{"text":"个完成了全部挑战！用时","color":"white","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"objective":"ar_time","name":"second"},"color":"aqua"},{"text":"!","color":"white"}]
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run gamemode spectator @s

# Celebrates winner's completion
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run summon firework_rocket 3989 136 4011 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;2147483647],FadeColors:[I;1]}],Flight:2}}}}
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run summon firework_rocket 3998 134 4006 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;2147483647],FadeColors:[I;1]}],Flight:2}}}}
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run summon firework_rocket 4012 134 4012 {LifeTime:10,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;2147483647],FadeColors:[I;1]}],Flight:2}}}}

# Adjusts incoming scores
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=red] at @s if score @s ar_laps matches 4 run scoreboard players operation red ar_results += 当前完赛 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=blue] at @s if score @s ar_laps matches 4 run scoreboard players operation blue ar_results += 当前完赛 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=green] at @s if score @s ar_laps matches 4 run scoreboard players operation green ar_results += 当前完赛 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=yellow] at @s if score @s ar_laps matches 4 run scoreboard players operation yellow ar_results += 当前完赛 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=cyan] at @s if score @s ar_laps matches 4 run scoreboard players operation cyan ar_results += 当前完赛 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=orange] at @s if score @s ar_laps matches 4 run scoreboard players operation orange ar_results += 当前完赛 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=purple] at @s if score @s ar_laps matches 4 run scoreboard players operation purple ar_results += 当前完赛 acerace_stats
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4,team=pink] at @s if score @s ar_laps matches 4 run scoreboard players operation pink ar_results += 当前完赛 acerace_stats

execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run scoreboard players operation 当前完赛 acerace_stats -= 后完赛递减 acerace_stats

# Clear out the completed players' status
execute as @a[x=3989,y=134,z=4009,dx=23,dy=8,dz=4] at @s if score @s ar_laps matches 4 run scoreboard players set @s ar_laps 0

execute if score liveplayers ar_game = completedplayers ar_game run function acerace4:end
execute if score gameflag ar_game matches 1 run schedule function acerace4:finish 2t
