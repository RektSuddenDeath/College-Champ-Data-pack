
# Notif
tellraw @a[team=green]  ["§c[§r䄶§c] ",{"text": "时之沙已流失殆尽，出口已关闭。下次不要再那么贪心啦！","color":"red","bold":true}]
execute as @a[team=green,gamemode=adventure] run tellraw @a[tag=_transcript] ["  §bTranscript >> §f",{"selector":"@s"},"没能逃出地牢，",{"score":{"name": "@s","objective": "SotPersonal"}},"丢失在了时之沙中。"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
scoreboard players set @a[team=green,gamemode=adventure] SotPersonal 0

scoreboard players set green SotTeamTime -1

# Player State
gamemode adventure @a[team=green,gamemode=spectator]
clear @a[team=green]

# Block Portal
fill 2491 82 1968 2509 86 1968 air
execute as @a[team=green] at @s run playsound sound.sands_of_time.locked_in record @s ~ ~ ~ 1.35
schedule clear sot:death/green

# Modifier Override
execute if score modifiers_sumo_warden SotGame matches 1 if score green SotEscaped matches 1.. run function sot:modifiers/sumo_warden/init/green
execute if score modifiers_sumo_warden SotGame matches 1 if score green SotEscaped matches 1.. run return 1
# Teleport
scoreboard players set GreenPlaying SotGame 0
tp @a[team=green,gamemode=spectator] 1522 102 1449 0 0
tp @a[team=green,gamemode=adventure] 1522 106 1502 180 0
spawnpoint @a[team=green] 1498 104 1446
