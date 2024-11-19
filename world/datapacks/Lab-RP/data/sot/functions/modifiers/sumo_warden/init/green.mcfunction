

tellraw @a[team=green] ["§b[§r坕§b] Sumo the Warden to unlock the exit!"]
tellraw @a[team=green] ["§b[§r坕§b] 和监守者极限互搏以解锁通路！"]

# Player Tags
gamemode adventure @a[team=green,tag=sot_escaped]
gamemode spectator @a[team=green,tag=!sot_escaped]

tag @a[team=green] add sumo_warden

advancement grant @a[team=green] only sot:in_warden_fight

# Player Effect
execute as @a[team=green] run attribute @s generic.max_health base set 50.0
execute as @a[team=green] run effect give @s instant_health 20 19 true

# Teleport.. and Summon Warden
tp @a[team=green] -7700 108 -7527 0 0
summon warden -7700 101 -7500

# Lock Timer
scoreboard players set green SotTeamTime -1

function sot:modifiers/sumo_warden/detect/green

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §f",{"translate":"team.green"},"§f开始了与监守者的对战！"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]