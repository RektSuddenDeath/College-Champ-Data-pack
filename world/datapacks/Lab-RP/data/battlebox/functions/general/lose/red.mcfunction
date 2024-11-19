
title @a[team=red] times 10 60 10
title @a[team=red] title [{"text": "你输了！","color": "red","bold": true}]
tellraw @a[team=red] ["§c[§r曺§c] ","§c你输了！你的对手占领了中心争夺点。"]

clear @a[team=red]
execute as @a[team=red] run attribute @s generic.attack_damage base set -100
effect give @a[team=red] resistance 100000 5 true
execute as @a[team=red] at @s run playsound minecraft:sound.team_eliminated record @s

execute if score round bb_game matches 1 run team modify placeholder_r1 suffix "/1"
execute if score round bb_game matches 2 run team modify placeholder_r1 suffix "/2"
execute if score round bb_game matches 3 run team modify placeholder_r1 suffix "/3"
execute if score round bb_game matches 4 run team modify placeholder_r1 suffix "/4"
execute if score round bb_game matches 5 run team modify placeholder_r1 suffix "/5"
execute if score round bb_game matches 6 run team modify placeholder_r1 suffix "/6"

# Remix Component
execute if entity @a[team=red,tag=p.score_tweak_win] run tellraw @a[team=red] "[§c-15分§f] 回合失败！" 
execute if entity @a[team=red,tag=p.score_tweak_win] run scoreboard players remove @a[team=red] bb_indvscore 15

tag @a[team=red] remove bb_noclear

execute as @a[team=red,tag=bb_lost_survive] run tellraw @s  "[§6+10分§f] 回合失败时存活。" 
execute as @a[team=red,tag=bb_lost_survive] run scoreboard players add @s bb_indvscore 10

tag @a[team=red] remove bb_lost_survive

execute if entity @a[team=red,tag=p.score_tweak_overtime] if score timeleft_tick bb_game matches ..200 run tellraw @a[team=red] "[§6+10分§f] 回合失败时剩余时间不足10秒。" 
execute if entity @a[team=red,tag=p.score_tweak_overtime] if score timeleft_tick bb_game matches ..200 run scoreboard players add @a[team=red] bb_indvscore 10