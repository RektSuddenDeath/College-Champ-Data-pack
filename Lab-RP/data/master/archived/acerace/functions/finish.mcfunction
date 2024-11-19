
#According to team, give Lap bonus
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19,team=red] at @s if score @s ar_cp2 matches 1 run scoreboard players operation red ar_results += 完成一圈 acerace_stats
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19,team=blue] at @s if score @s ar_cp2 matches 1 run scoreboard players operation blue ar_results += 完成一圈 acerace_stats
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19,team=green] at @s if score @s ar_cp2 matches 1 run scoreboard players operation green ar_results += 完成一圈 acerace_stats
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19,team=yellow] at @s if score @s ar_cp2 matches 1 run scoreboard players operation yellow ar_results += 完成一圈 acerace_stats

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_cp2 matches 1 if score @s ar_laps matches 1 run tellraw @a [{"text":"[ ","color":"yellow"},{"text":"⚑","color":"aqua"},{"text":" ] ","color":"yellow"},{"selector":"@s"},{"text":"完成了第","color":"white"},{"text":"1","color":"aqua"},{"text":"圈，用时","color":"white"},{"score":{"objective":"ar_indvtime","name":"@s"},"color":"yellow"},{"text":"秒","color":"yellow"}]
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_cp2 matches 1 if score @s ar_laps matches 2 run tellraw @a [{"text":"[ ","color":"yellow"},{"text":"⚑","color":"aqua"},{"text":" ] ","color":"yellow"},{"selector":"@s"},{"text":"完成了第","color":"white"},{"text":"2","color":"gold"},{"text":"圈，用时","color":"white"},{"score":{"objective":"ar_indvtime","name":"@s"},"color":"yellow"},{"text":"秒","color":"yellow"}]

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_cp2 matches 1 run scoreboard players add @s ar_laps 1
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_cp2 matches 1 run scoreboard players set @s ar_cp1 0
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_cp2 matches 1 run scoreboard players set @s ar_cp3 0
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_cp2 matches 1 run scoreboard players set @s ar_cp4 0

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_cp2 matches 1 run scoreboard players set @s ar_indvtime 0

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_cp2 matches 1 run scoreboard players set @s ar_cp2 0

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s run title @s times 0 40 10
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s run title @s title " "

#This will define the player's progress. Giving title if he is on Lap 2 or 3, finishing if he is on Lap 4
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 2 run title @s subtitle [{"text":"第二圈","color":"gold","bold":true}]
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 3 run title @s subtitle [{"text":"第三圈","color":"gold","bold":true}]

#If the player has completed, the following items will be executed, according to team. Finally clear the completed player's progress

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 run scoreboard players add completedplayers ar_game 1
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 if score second ar_time matches 0..9 run tellraw @a [{"text":"[ ","color":"white"},{"text":"⚑","color":"gold"},{"text":" ] ","color":"white"},{"selector":"@s"},{"text":"第","color":"white"},{"score":{"objective":"ar_game","name":"completedplayers"},"color":"gold","bold":true},{"text":"个完成了全部挑战！用时","color":"white","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"aqua"},{"text":":0","color":"aqua"},{"score":{"objective":"ar_time","name":"second"},"color":"aqua"},{"text":"!","color":"white"}]
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 if score second ar_time matches 10..60 run tellraw @a [{"text":"[ ","color":"white"},{"text":"⚑","color":"gold"},{"text":" ] ","color":"white"},{"selector":"@s"},{"text":"第","color":"white"},{"score":{"objective":"ar_game","name":"completedplayers"},"color":"gold","bold":true},{"text":"个完成了全部挑战！用时","color":"white","bold":false},{"score":{"objective":"ar_time","name":"minute"},"color":"aqua"},{"text":":","color":"aqua"},{"score":{"objective":"ar_time","name":"second"},"color":"aqua"},{"text":"!","color":"white"}]
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 run gamemode spectator @s

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 run summon firework_rocket -1003 103 -993 {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;2147483647],FadeColors:[I;1]}],Flight:2}}}}
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 run summon firework_rocket -1008 105 -999 {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;2147483647],FadeColors:[I;1]}],Flight:2}}}}
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 run summon firework_rocket -1002 105 -1008 {LifeTime:10,FireworksItem:{id:firework_rocket,Count:1,tag:{Fireworks:{Explosions:[{Type:2,Trail:1,Colors:[I;2147483647],FadeColors:[I;1]}],Flight:2}}}}

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19,team=red] at @s if score @s ar_laps matches 4 run scoreboard players operation red ar_results += 当前完赛 acerace_stats
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19,team=blue] at @s if score @s ar_laps matches 4 run scoreboard players operation blue ar_results += 当前完赛 acerace_stats
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19,team=green] at @s if score @s ar_laps matches 4 run scoreboard players operation green ar_results += 当前完赛 acerace_stats
execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19,team=yellow] at @s if score @s ar_laps matches 4 run scoreboard players operation yellow ar_results += 当前完赛 acerace_stats

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 run scoreboard players operation 当前完赛 acerace_stats -= 后完赛递减 acerace_stats



execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 if score completedplayers ar_game matches 1 run function acerace:finishwarning

execute as @a[x=-1001,y=100,z=-1010,dx=3,dy=7,dz=19] at @s if score @s ar_laps matches 4 run scoreboard players set @s ar_laps 0

execute if score liveplayers ar_game = completedplayers ar_game run function acerace:end
execute if score gameflag ar_game matches 1 run schedule function acerace:finish 2t
