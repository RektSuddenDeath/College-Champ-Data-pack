gamemode adventure @a
effect clear @a
execute as @a run attribute @s generic.max_health base set 20
clear @a
stopsound @a
time set day
scoreboard players add gamecount tourney_stats 1
scoreboard players set phase tourney_stats 1
scoreboard players set lobby tourney_stats 1
scoreboard players set ActiveGame tourney_stats 0
scoreboard players set audienceTakeover tourney_stats 0
execute in minecraft:overworld run tp @a -9999.28 117.00 -10027.96 0 0
execute as @a at @s run spawnpoint

scoreboard players set Glow TPM 0

gamerule doTileDrops false
gamerule fallDamage false
difficulty peaceful

#
execute as @a run attribute @s generic.attack_damage base set -1
function decisiondome:scoreboard/betweenrounds
function decisiondome:player

schedule function decisiondome:setup 10t
schedule clear master:timer/backtohub/sec
schedule clear master:latejoinspec
#
tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event state: §7GAME_END§f -> LOBBY"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Glow Component
scoreboard objectives remove glowing_to_team
scoreboard objectives add TPM dummy
scoreboard players set Glow TPM 0
scoreboard players set plugin_glow_control tourney_stats 0
scoreboard players set team_glow tourney_stats 0
# UI Clicking allow?
scoreboard players set disallow_ui tourney_stats 0

# Clear Last Multi from Chaos Multiplier
scoreboard players set red chaos_multi 0
scoreboard players set blue chaos_multi 0
scoreboard players set green chaos_multi 0
scoreboard players set yellow chaos_multi 0
scoreboard players set cyan chaos_multi 0
scoreboard players set pink chaos_multi 0
scoreboard players set orange chaos_multi 0
scoreboard players set purple chaos_multi 0