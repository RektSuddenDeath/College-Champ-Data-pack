
scoreboard players set RoundActive tourney_stats 0

schedule clear parkourtag:general/pt
schedule clear master:timer/timeleft/sec
schedule function parkourtag:game/7/winanno 2s
scoreboard players set gameflag pkt_game 0
tellraw @a [{"text": "以下是本轮对战情况: ","bold": true}]


stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
execute as @a at @s run playsound music.gameendmusic record @s
title @a times 0 60 10
title @a title [{"text": "游戏结束！","color": "red","bold": true}]

title @a[tag=runner] times 10 60 10
title @a[tag=runner] subtitle "§a你成功逃脱了抓捕！"
title @a[tag=runner] title "§a幸存者！"
execute as @a[tag=runner] at @s run playsound sound.acquire record @s
scoreboard players add @a[tag=runner] pkt_escapes 1

execute as @a[tag=runner] run scoreboard players operation @s pkt_indvscore += runnerwin pkt_stats
tellraw @a[tag=runner] [{"text": ""},"[§6+",{"score":{"name": "runnerwin","objective": "pkt_stats"},"color":"gold"},"§6分§r]"," §a[§r彀§a] ","§a你已存活整局游戏！"]
function parkourtag:teamsurvive

# Hunter Lose
execute as @a[tag=hunter] at @s if entity @a[tag=runner,distance=0..65] run title @s times 10 60 10
execute as @a[tag=hunter] at @s if entity @a[tag=runner,distance=0..65] run title @s title "§c被逃脱！"
execute as @a[tag=hunter] at @s if entity @a[tag=runner,distance=0..65] run title @s subtitle "§c下次要动作更快一点！"

function parkourtag:statusbar/clear

execute as @a run attribute @s generic.attack_damage base set -1
clear @a


team modify placeholder_r1 suffix "/7"
team modify placeholder_b1 suffix "/7"
team modify placeholder_g1 suffix "/7"
team modify placeholder_y1 suffix "/7"
team modify placeholder_cy1 suffix "/7"
team modify placeholder_pi1 suffix "/7"
team modify placeholder_or1 suffix "/7"
team modify placeholder_pu1 suffix "/7"

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §fRound Ended! Survivors: ",{"selector":"@a[tag=runner]"}," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

execute as @a[team=!spec] run scoreboard players operation @s tourney_indv += @s pkt_indvscore
execute as @a[team=!spec] run scoreboard players operation @s SortTarget = @s pkt_indvscore
function utils:rankstart
schedule clear master:latejoinspec
function utils:no_drop_stop

execute if score eventmode tourney_stats matches 0 run scoreboard players reset :

execute if score eventmode tourney_stats matches 1 run function master:timer/backtohub/45s

# f3+b
gamerule reducedDebugInfo false
