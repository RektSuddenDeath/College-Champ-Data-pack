

effect give @a fire_resistance 15 0 true
scoreboard players set all db_death 0

scoreboard players set arrowsUsed db_game 0
function dodgebolt:shrink/auto

schedule clear dodgebolt:beginlistener
schedule clear master:timer/starting/sec


execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1

execute if score team1wins db_game <= team2wins db_game run summon arrow 10019 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.3d,0.0d],Tags:["system"]}
execute if score team2wins db_game <= team1wins db_game run summon arrow 10007 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.3d,0.0d],Tags:["system"]}
execute if score team1wins db_game < team2wins db_game run summon arrow 10019 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.2d,0.0d],Tags:["system"]}
execute if score team2wins db_game < team1wins db_game run summon arrow 10007 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.2d,0.0d],Tags:["system"]}

execute if score eventmode tourney_stats matches 1 if score team1wins db_game matches 0 if score team2wins db_game matches 0 run kill @e[type=arrow]
execute if score eventmode tourney_stats matches 1 if score team1wins db_game matches 0 if score team2wins db_game matches 0 run summon arrow 10019 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.2d,0.0d],Tags:["system"]}
execute if score eventmode tourney_stats matches 1 if score team1wins db_game matches 0 if score team2wins db_game matches 0 run summon arrow 10019 187 9978 {damage:0.0d,Glowing:1,Rotation:[0,-90],HasBeenShot:1,pickup:1,Motion:[0.0d,0.2d,0.0d],Tags:["system"]}
fill 9997 187 9993 10029 187 9963 air

scoreboard players set gameflag db_game 1
scoreboard players set §3 db_sb 3
scoreboard players reset : db_sb

execute if score round db_game matches 1 run function master:sfx/dodgebolt_short

give @a[tag=db_teamone] bow{Unbreakable:1b,HideFlags:5} 1
give @a[tag=db_teamtwo] bow{Unbreakable:1b,HideFlags:5} 1

# Arrows Timeout
scoreboard objectives add db_arrowTimeout dummy
execute unless score mega_mode db_game matches 1 run scoreboard players set @a db_arrowTimeout 90
execute if score mega_mode db_game matches 1 run scoreboard players set @a db_arrowTimeout 30

scoreboard objectives add db_timeoutReset dummy
scoreboard players set @a db_timeoutReset 0
function dodgebolt:arrowtimeout

function dodgebolt:arrowevent/center
function dodgebolt:arrowevent/glow
function dodgebolt:arrowevent/harmful
function dodgebolt:death
function dodgebolt:bow
function dodgebolt:enemyside


execute unless score mega_mode db_game matches 1 if score round db_game matches 1 run tellraw @a ["","§b[§r逌§b] 回合开始！活动分领先的队伍获得",{"text": "2","color": "#E3E3E3"},"§b根箭。"]
execute unless score mega_mode db_game matches 1 if score round db_game matches 2.. if score team1wins db_game = team2wins db_game run tellraw @a ["","§b[§r逌§b] 回合开始！双方均获得",{"text": "1","color": "#E3E3E3"},"§b根箭。"]
execute unless score mega_mode db_game matches 1 if score round db_game matches 2.. unless score team1wins db_game = team2wins db_game run tellraw @a ["","§b[§r逌§b] 回合开始！比分落后方获得",{"text": "2","color": "#E3E3E3"},"§b根箭。"]

execute if score mega_mode db_game matches 1 if score round db_game matches 1 run tellraw @a ["","§b[§r逌§b] 对战开始！"]


title @a title " "
title @a subtitle " "

gamemode adventure @a[tag=db_teamone]
gamemode adventure @a[tag=db_teamtwo]



tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7PRE_ROUND§f -> ROUND_STARTS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
