
# Notif
tellraw @a[team=orange]  ["§c[§r䄶§c] ",{"text": "时之沙已流失殆尽，出口已关闭。下次不要再那么贪心啦！","color":"red","bold":true}]
execute as @a[team=orange,gamemode=adventure] run tellraw @a[tag=_transcript] ["  §bTranscript >> §f",{"selector":"@s"},"没能逃出地牢，",{"score":{"name": "@s","objective": "SotPersonal"}},"丢失在了时之沙中。"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
scoreboard players set @a[team=orange,gamemode=adventure] SotPersonal 0

scoreboard players set orange SotTeamTime -1

# Player State
gamemode adventure @a[team=orange,gamemode=spectator]
clear @a[team=orange]

# Block Portal
fill 2991 82 2468 3009 86 2468 air
execute as @a[team=orange] at @s run playsound sound.sands_of_time.locked_in record @s ~ ~ ~ 1.35
schedule clear sot:death/orange

# Modifier Override
execute if score modifiers_sumo_warden SotGame matches 1 if score orange SotEscaped matches 1.. run function sot:modifiers/sumo_warden/init/orange
execute if score modifiers_sumo_warden SotGame matches 1 if score orange SotEscaped matches 1.. run return 1
# Teleport
scoreboard players set OrangePlaying SotGame 0
tp @a[team=orange,gamemode=spectator] 1522 102 1449 0 0
tp @a[team=orange,gamemode=adventure] 1522 106 1502 180 0
spawnpoint @a[team=orange] 1498 104 1446
