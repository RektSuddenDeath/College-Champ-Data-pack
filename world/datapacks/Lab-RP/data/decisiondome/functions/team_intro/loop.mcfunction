
# Team Intro Script
# 0s: 黑屏5_20_5
# 25t: 绕Decision Dome上层转圈
# 2s: 文案“欢迎来到高校小游戏联赛”
# 8s: 转移到面向Decision Dome中心 “你将参与8个游戏……”
# 16s: 转移到另一个场景，在8秒内展示1.0x - 3.0x的倍率递增的画面，对应文案。
# 24s: 转移到Dodgebolt场景，“前两名队伍将会……”
# 32s：白屏，所有玩家转移到Decision Dome的格子里面并隐身
# 33s: 接下来是队伍介绍时间，Decision Dome Column换成白色的
# 37s：运行decisiondome:team_intro/color_dome/red
# (+2s) 39s: 传送红队的玩家到中心，烟花，文案“红队……” title 红队，0_20_5
# (+5s) 44s: 把红队变成粒子，运行 /color_dome/blue
# (+2s) 46s: 红队传送到对应格子中并现形，传送蓝队的玩家到中心，烟花，文案“蓝队……” title 蓝队，0_20_5
# (+7s) 51 53s：绿队
# (+7s) 58 60s: 黄队
# (+7s) 65 67s: 青队
# (+7s) 72 74s: 粉队
# (+7s) 79 81s: 橙队
# (+7s) 86 88s: 紫队
# (+5s) 93s: 紫队完成，启动第一个Decision Dome

scoreboard players add team_intro_ticks tourney_stats 1

execute if score team_intro_ticks tourney_stats matches 24 run function decisiondome:team_intro/phase_init/1
execute if score team_intro_ticks tourney_stats matches 30 run function decisiondome:team_intro/phase_init/event_title
execute if score team_intro_ticks tourney_stats matches 40 run function decisiondome:team_intro/phase_init/2
execute if score team_intro_ticks tourney_stats matches 160 run function decisiondome:team_intro/phase_init/3
execute if score team_intro_ticks tourney_stats matches 320 run function decisiondome:team_intro/phase_init/4
execute if score team_intro_ticks tourney_stats matches 480 run function decisiondome:team_intro/phase_init/5
execute if score team_intro_ticks tourney_stats matches 640 run function decisiondome:team_intro/phase_init/6
execute if score team_intro_ticks tourney_stats matches 660 run function decisiondome:team_intro/phase_init/7

execute if score team_intro_ticks tourney_stats matches 760 run function decisiondome:team_intro/phase_init/8
execute if score team_intro_ticks tourney_stats matches 780 run function decisiondome:team_intro/phase_init/9
execute if score team_intro_ticks tourney_stats matches 880 run function decisiondome:team_intro/phase_init/10

execute if score team_intro_ticks tourney_stats matches 900 run function decisiondome:team_intro/phase_init/11
execute if score team_intro_ticks tourney_stats matches 1000 run function decisiondome:team_intro/phase_init/12

execute if score team_intro_ticks tourney_stats matches 1020 run function decisiondome:team_intro/phase_init/13
execute if score team_intro_ticks tourney_stats matches 1120 run function decisiondome:team_intro/phase_init/14

execute if score team_intro_ticks tourney_stats matches 1140 run function decisiondome:team_intro/phase_init/15
execute if score team_intro_ticks tourney_stats matches 1240 run function decisiondome:team_intro/phase_init/16

execute if score team_intro_ticks tourney_stats matches 1260 run function decisiondome:team_intro/phase_init/17
execute if score team_intro_ticks tourney_stats matches 1360 run function decisiondome:team_intro/phase_init/18

execute if score team_intro_ticks tourney_stats matches 1380 run function decisiondome:team_intro/phase_init/19
execute if score team_intro_ticks tourney_stats matches 1480 run function decisiondome:team_intro/phase_init/20

execute if score team_intro_ticks tourney_stats matches 1500 run function decisiondome:team_intro/phase_init/21
execute if score team_intro_ticks tourney_stats matches 1600 run function decisiondome:team_intro/phase_init/22

execute if score team_intro_ticks tourney_stats matches 1620 run function decisiondome:team_intro/phase_init/23
execute if score team_intro_ticks tourney_stats matches 1720 run function decisiondome:team_intro/phase_init/24

execute if score team_intro_ticks tourney_stats matches 1740 run function decisiondome:team_intro/phase_init/25

execute if score team_intro_ticks tourney_stats matches 0..1739 run schedule function decisiondome:team_intro/loop 1t