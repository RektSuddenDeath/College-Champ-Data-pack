
# Fx
scoreboard players operation yellow SotTeamBanked += @s SotPersonal
execute as @a[team=yellow] at @s run playsound minecraft:sound.acquire record @s ~ ~ ~ 1 1
# Player State
gamemode spectator @s
clear @s
# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@s"}," §f成功逃出了地牢，存入",{"score":{"name": "@s","objective": "SotPersonal_multi"},"color": "gold"},"金币。"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
# Scores
tellraw @a[team=yellow] ["§a[§r彀§a] ",{"selector":"@s"},{"text":"存入了","color":"gold"},{"score":{"objective":"SotPersonal_multi","name":"@s"}},{"text":"金币！","color":"gold"}]
scoreboard players set @s SotPersonal 0

tag @s remove sumo_warden
advancement revoke @s only sot:in_warden_fight

