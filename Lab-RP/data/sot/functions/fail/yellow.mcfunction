

# Notif
tellraw @a[team=yellow]  ["§c[§r䄶§c] ",{"text": "时之沙已流失殆尽，出口已关闭。下次不要再那么贪心啦！","color":"red","bold":true}]
execute as @a[team=yellow,gamemode=adventure] run tellraw @a[tag=_transcript] ["  §bTranscript >> §f",{"selector":"@s"},"没能逃出地牢，",{"score":{"name": "@s","objective": "SotPersonal"}},"丢失在了时之沙中。"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
scoreboard players set @a[team=yellow,gamemode=adventure] SotPersonal 0

scoreboard players set yellow SotTeamTime -1

# Player State
gamemode adventure @a[team=yellow,gamemode=spectator]
clear @a[team=yellow]

# Block Portal
fill 2491 82 2968 2509 86 2968 air
execute as @a[team=yellow] at @s run playsound sound.sands_of_time.locked_in record @s ~ ~ ~ 1.35
schedule clear sot:death/yellow

# Modifier Override
execute if score modifiers_sumo_warden SotGame matches 1 if score yellow SotEscaped matches 1.. run function sot:modifiers/sumo_warden/init/yellow
execute if score modifiers_sumo_warden SotGame matches 1 if score yellow SotEscaped matches 1.. run return 1
# Teleport
scoreboard players set YellowPlaying SotGame 0
tp @a[team=yellow,gamemode=spectator] 1522 102 1449 0 0
tp @a[team=yellow,gamemode=adventure] 1522 106 1502 180 0
spawnpoint @a[team=yellow] 1498 104 1446
