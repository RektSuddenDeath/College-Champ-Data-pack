
clear @a
effect give @a fire_resistance 25 0 true
execute as @a run attribute @s minecraft:generic.armor base set 0

scoreboard players set gameflag db_game 0
schedule clear dodgebolt:death
schedule clear dodgebolt:shrink/auto

scoreboard players add team1wins db_game 1

execute if score team1wins db_game matches 3 run execute as @a at @s run playsound minecraft:ui.toast.challenge_complete record @s ~ ~ ~ 1 1
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
execute if score team1wins db_game matches 1..2 run title @a times 0 60 10
execute if score team1wins db_game matches 1..2 run title @a title [{"text":"回合结束！","color":"red","bold":true}]

execute if score team1wins db_game matches 3 run title @a times 0 80 40
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 0 if score TeamOne db_teams matches 1 run title @a title ["",{"text":"红队获胜！","color":"red","bold":true}]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 0 if score TeamOne db_teams matches 2 run title @a title ["",{"text":"蓝队获胜！","color":"blue","bold":true}]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 0 if score TeamOne db_teams matches 3 run title @a title ["",{"text":"绿队获胜！","color":"green","bold":true}]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 0 if score TeamOne db_teams matches 4 run title @a title ["",{"text":"黄队获胜！","color":"yellow","bold":true}]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 0 if score TeamOne db_teams matches 5 run title @a title ["",{"text":"青队获胜！","color":"dark_aqua","bold":true}]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 0 if score TeamOne db_teams matches 6 run title @a title ["",{"text":"橙队获胜！","color":"gold","bold":true}]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 0 if score TeamOne db_teams matches 7 run title @a title ["",{"text":"紫队获胜！","color":"dark_purple","bold":true}]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 0 if score TeamOne db_teams matches 8 run title @a title ["",{"text":"粉队获胜！","color":"light_purple","bold":true}]

execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 1 run title @a subtitle [""]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 2 run title @a subtitle [""]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 3 run title @a subtitle [""]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 4 run title @a subtitle [""]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 5 run title @a subtitle [""]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 6 run title @a subtitle [""]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 7 run title @a subtitle [""]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 8 run title @a subtitle [""]

execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 1 run title @a title ["",{"text":"红队","color":"red","bold":true},"赢得了本届高校联赛！"]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 2 run title @a title ["",{"text":"蓝队","color":"blue","bold":true},"赢得了本届高校联赛！"]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 3 run title @a title ["",{"text":"绿队","color":"green","bold":true},"赢得了本届高校联赛！"]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 4 run title @a title ["",{"text":"黄队","color":"yellow","bold":true},"赢得了本届高校联赛！"]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 5 run title @a title ["",{"text":"青队","color":"dark_aqua","bold":true},"赢得了本届高校联赛！"]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 6 run title @a title ["",{"text":"橙队","color":"gold","bold":true},"赢得了本届高校联赛！"]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 7 run title @a title ["",{"text":"紫队","color":"dark_purple","bold":true},"赢得了本届高校联赛！"]
execute if score team1wins db_game matches 3 if score eventmode tourney_stats matches 1 if score TeamOne db_teams matches 8 run title @a title ["",{"text":"粉队","color":"light_purple","bold":true},"赢得了本届高校联赛！"]

execute if score team1wins db_game matches 3 run tag @a[tag=db_teamone] add eventwinner

execute if score team1wins db_game matches 1 run team modify placeholder_1 suffix [{"text":" "},{"text": "\ue007", "font": "font:font"}," ",{"text": "\ue006", "font": "font:font"}," ",{"text": "\ue008", "font": "font:font"}]
execute if score team1wins db_game matches 2 run team modify placeholder_1 suffix [{"text":" "},{"text": "\ue007", "font": "font:font"}," ",{"text": "\ue007", "font": "font:font"}," ",{"text": "\ue008", "font": "font:font"}]
execute if score team1wins db_game matches 3 run team modify placeholder_1 suffix [{"text":" "},{"text": "\ue007", "font": "font:font"}," ",{"text": "\ue007", "font": "font:font"}," ",{"text": "\ue009", "font": "font:font"}]

execute if score team1wins db_game matches 1 if score mega_mode db_game matches 1 run team modify placeholder_1 suffix [{"text":" "},{"text": "\ue007", "font": "font:font"}]


scoreboard players reset §3 db_sb
execute if score team1wins db_game matches 1..2 run scoreboard players set : db_sb 3

execute if score team1wins db_game matches 1..2 run scoreboard players reset §3 db_sb
execute if score team1wins db_game matches 1..2 run scoreboard players set : db_sb 3
execute if score eventmode tourney_stats matches 0 if score team1wins db_game matches 3 run team modify placeholder_3 suffix [{"text":"游戏结束","color":"red","bold":true}]
execute if score eventmode tourney_stats matches 1 if score team1wins db_game matches 3 run function master:timer/backtohub/10s
execute if score mega_mode db_game matches 1 if score team1wins db_game matches 1 run function master:timer/backtohub/10s
execute if score mega_mode db_game matches 1 if score team1wins db_game matches 1 run scoreboard players set team1wins db_game 3

# Chaos: all team 1 is crowned winner
execute if score team1wins db_game matches 3 if score modifiers_bp_megabolt tourney_stats matches 1 run tag @a[tag=db_teamone] add eventwinner


execute if score team1wins db_game matches 1..2 run function master:timer/nextround/10s
execute if score team1wins db_game matches 1..2 run schedule function dodgebolt:timecontrol 9s

execute if score team1wins db_game matches 0..2 if score team2wins db_game matches 0..2 run function master:sfx/dodgebolt

schedule clear master:latejoinspec


tellraw @a[tag=_transcript] ["  §bTranscript >> §fTeam One won this round. Current series: ",{"score":{"name": "team1wins","objective": "db_game"}},":",{"score":{"name": "team2wins","objective": "db_game"}}," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
execute if score team1wins db_game matches 1..2 run tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7ROUND_STARTS§f -> PRE_ROUND"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
execute if score team1wins db_game matches 3 run tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7ROUND_STARTS§f -> WINNERS_PODIUM"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

gamerule reducedDebugInfo false

tellraw @a ["","§b[§r逌§b] 回合结束！"]