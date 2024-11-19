
# Flag
scoreboard players set PinkPlaying SotGame 0

# Escaped Player
tp @a[team=pink,tag=sot_escaped] 1522 102 1449 0 0
gamemode adventure @a[team=pink,gamemode=spectator]

# Died Player
tp @a[team=pink,tag=!sot_escaped] 1522 106 1502 180 0
spawnpoint @a[team=pink] 1522 106 1502 180

# General
execute as @a[team=pink] run attribute @s generic.attack_damage base set -100
execute as @a[team=pink] run attribute @s generic.max_health base set 20
scoreboard players set @a[team=pink] SotPersonal 0

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §f粉队完成了探险! Warden Battle Time: ",{"score":{"name": "pink","objective": "SotWardenSumoTime"}}," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
