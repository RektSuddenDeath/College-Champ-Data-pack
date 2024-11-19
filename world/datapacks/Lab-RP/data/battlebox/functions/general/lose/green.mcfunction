title @a[team=green] times 10 60 10
title @a[team=green] title [{"text": "你输了！","color": "red","bold": true}]
tellraw @a[team=green] ["§c[§r曺§c] ","§c你输了！你的对手占领了中心争夺点。"]

clear @a[team=green]
execute as @a[team=green] run attribute @s generic.attack_damage base set -100
effect give @a[team=green] resistance 100000 5 true
execute as @a[team=green] at @s run playsound minecraft:sound.team_eliminated record @s

execute if score round bb_game matches 1 run team modify placeholder_g1 suffix "/1"
execute if score round bb_game matches 2 run team modify placeholder_g1 suffix "/2"
execute if score round bb_game matches 3 run team modify placeholder_g1 suffix "/3"
execute if score round bb_game matches 4 run team modify placeholder_g1 suffix "/4"
execute if score round bb_game matches 5 run team modify placeholder_g1 suffix "/5"
execute if score round bb_game matches 6 run team modify placeholder_g1 suffix "/6"

# Remix Component
execute if entity @a[team=green,tag=p.score_tweak_win] run tellraw @a[team=green] "[§c-15分§f] 回合失败！" 
execute if entity @a[team=green,tag=p.score_tweak_win] run scoreboard players remove @a[team=green] bb_indvscore 15

tag @a[team=green] remove bb_noclear

execute as @a[team=green,tag=bb_lost_survive] run tellraw @s  "[§6+10分§f] 回合失败时存活。" 
execute as @a[team=green,tag=bb_lost_survive] run scoreboard players add @s bb_indvscore 10

tag @a[team=green] remove bb_lost_survive

execute if entity @a[team=green,tag=p.score_tweak_overtime] if score timeleft_tick bb_game matches ..200 run tellraw @a[team=green] "[§6+10分§f] 回合失败时剩余时间不足10秒。" 
execute if entity @a[team=green,tag=p.score_tweak_overtime] if score timeleft_tick bb_game matches ..200 run scoreboard players add @a[team=green] bb_indvscore 10