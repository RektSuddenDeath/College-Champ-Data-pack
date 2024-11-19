
time set night
kill @e[type=armor_stand,tag=Intro]
tp @a 10014 199 9952
summon armor_stand 10014 199 9952 {Tags:["Intro"],NoGravity:1b,Invisible:1b,Rotation:[0f,16.9f]}


tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
tellraw @a " "
tellraw @a " "
tellraw @a ["  ","§f§l8个游戏过后，得分最高的§6§l2个队伍§f§l将参与最终对决。"]
tellraw @a ""
tellraw @a "  §e最终对决的胜方即是今天活动最后的赢家。"
tellraw @a ""
tellraw @a " "
tellraw @a " "
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
execute as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 10


schedule clear decisiondome:team_intro/phase_loop/4
schedule function decisiondome:team_intro/phase_loop/5 1t
schedule function decisiondome:team_intro/phase_init/unspec 3t