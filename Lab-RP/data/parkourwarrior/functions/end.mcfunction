
scoreboard players set RoundActive tourney_stats 0

scoreboard players set ingame pkw_game 0
gamemode spectator @a
schedule clear master:latejoinspec
schedule clear parkourwarrior:checkpoint/void
schedule clear master:timer/starting/sec
schedule clear parkourwarrior:end
schedule clear master:timer/timeleft/sec

clear @a
effect clear @a



title @a times 0 60 20
title @a title [{"text": "游戏结束！","color":"red","bold": true}]

execute as @a at @s run playsound block.anvilland block @s ~ ~ ~ 1 1
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2


# Calculates Scores
function parkourwarrior:scorings/personal

# Announce Scores

scoreboard players set red announced 0
scoreboard players set blue announced 0
scoreboard players set green announced 0
scoreboard players set yellow announced 0


scoreboard players set stage mvp 24
scoreboard players set positioned mvp 1

schedule function utils:text/gamescore 2s
schedule function utils:text/furthestgo 10s
schedule function parkourwarrior:scorings/mvp 12s
schedule function parkourwarrior:scorings/cleanup 13s
schedule function utils:text/eventstandings 20s

execute if score eventmode tourney_stats matches 0 run scoreboard players reset : pkw_sb
execute if score eventmode tourney_stats matches 0 run scoreboard players set §1 pkw_sb 1
team modify placeholder_1 suffix ""
team modify placeholder_1 prefix [{"text": "游戏结束","color":"red","bold": true}]
execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/30s