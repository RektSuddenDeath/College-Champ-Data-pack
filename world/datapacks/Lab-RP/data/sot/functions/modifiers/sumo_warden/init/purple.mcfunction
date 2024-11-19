

tellraw @a[team=purple] ["§b[§r坕§b] Sumo the Warden to unlock the exit!"]
tellraw @a[team=purple] ["§b[§r坕§b] 和监守者极限互搏以解锁通路！"]

# Player Tags
gamemode adventure @a[team=purple,tag=sot_escaped]
gamemode spectator @a[team=purple,tag=!sot_escaped]

tag @a[team=purple] add sumo_warden

advancement grant @a[team=purple] only sot:in_warden_fight

# Player Effect
execute as @a[team=purple] run attribute @s generic.max_health base set 50.0
execute as @a[team=purple] run effect give @s instant_health 20 19 true

# Teleport.. and Summon Warden
tp @a[team=purple] -8200 108 -7527 0 0
summon warden -8200 101 -7500

# Lock Timer
scoreboard players set purple SotTeamTime -1

function sot:modifiers/sumo_warden/detect/purple

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §f",{"translate":"team.purple"},"§f开始了与监守者的对战！"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]