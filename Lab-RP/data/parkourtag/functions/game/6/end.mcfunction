
scoreboard players set RoundActive tourney_stats 0

schedule clear parkourtag:general/pt
schedule clear master:timer/timeleft/sec
schedule function parkourtag:game/6/winanno 2s
scoreboard players set gameflag pkt_game 0
tellraw @a [{"text": "以下是本轮对战情况: ","bold": true}]

execute as @a at @s run playsound minecraft:block.anvilland block @s ~ ~ ~ 1 1
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
title @a times 0 60 10
title @a title [{"text": "回合结束！","color": "red","bold": true}]

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

execute as @a run attribute @s generic.attack_damage base set -1
clear @a

function master:timer/nextround/15s
schedule function parkourtag:game/7/pregame 15s

team modify placeholder_r1 suffix "/6"
team modify placeholder_b1 suffix "/6"
team modify placeholder_g1 suffix "/6"
team modify placeholder_y1 suffix "/6"
team modify placeholder_cy1 suffix "/6"
team modify placeholder_pi1 suffix "/6"
team modify placeholder_or1 suffix "/6"
team modify placeholder_pu1 suffix "/6"

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §fRound Ended! Survivors: ",{"selector":"@a[tag=runner]"}," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]