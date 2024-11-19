
# Flag
scoreboard players set OrangePlaying SotGame 0

# Escaped Player
tp @a[team=orange,tag=sot_escaped] 1522 102 1449 0 0
gamemode adventure @a[team=orange,gamemode=spectator]

# Died Player
tp @a[team=orange,tag=!sot_escaped] 1522 106 1502 180 0
spawnpoint @a[team=orange] 1522 106 1502 180

# General
execute as @a[team=orange] run attribute @s generic.attack_damage base set -100
execute as @a[team=orange] run attribute @s generic.max_health base set 20
scoreboard players set @a[team=orange] SotPersonal 0

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §f橙队完成了探险! Warden Battle Time: ",{"score":{"name": "orange","objective": "SotWardenSumoTime"}}," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
