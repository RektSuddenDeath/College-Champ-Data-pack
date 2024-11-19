
clear @a
kill @e[type=item]
clone 9997 171 9993 10029 170 9963 9997 185 9963
effect give @a instant_health 1 10 true
gamerule doImmediateRespawn false

tag @a remove nobow

scoreboard players set team1player db_game 0
scoreboard players set team2player db_game 0

scoreboard players set team1alive db_game 0
scoreboard players set team2alive db_game 0

scoreboard players set @a db_death 0
scoreboard players set all db_death 0
scoreboard players set shrinks db_shrink 0
scoreboard players set overtimeactive db_game 0
scoreboard players add round db_game 1

execute as @a[tag=db_teamone,scores={health=1..}] run scoreboard players add team1player db_game 1
execute as @a[tag=db_teamtwo,scores={health=1..}] run scoreboard players add team2player db_game 1

execute as @a[tag=db_teamone,scores={health=1..}] run scoreboard players add team1alive db_game 1
execute as @a[tag=db_teamtwo,scores={health=1..}] run scoreboard players add team2alive db_game 1


spawnpoint @a[tag=db_teamone] 10033 193 9978
spawnpoint @a[tag=db_teamtwo] 9993 193 9978

kill @e[type=arrow]

tp @a[tag=db_teamtwo] 10013 217 9978 facing 10013 216 9978
tp @a[tag=db_teamone] 10013 217 9978 facing 10013 216 9978

schedule function dodgebolt:tp1 2t
schedule function dodgebolt:tp2 2t

execute if score round db_game matches 1 run function master:timer/starting/25s
execute if score round db_game matches 2..4 run function master:timer/starting/10s
execute if score round db_game matches 5 run function master:timer/starting/15s

function dodgebolt:beginlistener
schedule clear master:timer/nextround/sec
scoreboard players set : db_sb 3
scoreboard players reset §3 db_sb


scoreboard players set shrink1 db_shrink 0
scoreboard players set shrink2 db_shrink 0
scoreboard players set shrink3 db_shrink 0
scoreboard players set shrink4 db_shrink 0
scoreboard players set shrink5 db_shrink 0
scoreboard players set shrink6 db_shrink 0


scoreboard players set @a killedByRed 0
scoreboard players set @a killedByBlue 0
scoreboard players set @a killedByGreen 0
scoreboard players set @a killedByYellow 0
scoreboard players set @a killedByPink 0
scoreboard players set @a killedByPurple 0
scoreboard players set @a killedByCyan 0
scoreboard players set @a killedByOrange 0

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7FINAL_DUEL_PREGAME§f -> PRE_ROUND"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Remove Crowns
team modify red suffix ""
team modify blue suffix ""
team modify green suffix ""
team modify yellow suffix ""
team modify cyan suffix ""
team modify orange suffix ""
team modify pink suffix ""
team modify purple suffix ""

# f3b
gamerule reducedDebugInfo true