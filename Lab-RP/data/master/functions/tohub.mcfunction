gamemode adventure @a
effect clear @a
execute as @a run attribute @s generic.max_health base set 20
clear @a
stopsound @a
time set day
scoreboard players add gamecount tourney_stats 1
execute store result storage master:event_status game_count int 1 run scoreboard players add next_gamecount tourney_stats 1
scoreboard players set phase tourney_stats 1
scoreboard players set lobby tourney_stats 1
scoreboard players set ActiveGame tourney_stats 0
scoreboard players set audienceTakeover tourney_stats 0

# Status Update

execute in minecraft:overworld run tp @a -9999.28 117.00 -10027.96 0 0
execute as @a at @s run spawnpoint

scoreboard players set Glow TPM 0

gamerule doTileDrops false
gamerule fallDamage false
difficulty peaceful

# REMIX玩法记得删
execute if score remix_mode tourney_stats matches 1.. run fill -9956 101 -9985 -9962 101 -9985 black_terracotta
execute if score remix_mode tourney_stats matches 1.. run scoreboard players set remix_mode tourney_stats 0

#
execute as @a run attribute @s generic.attack_damage base set -1
function decisiondome:scoreboard/betweenrounds
execute if score gamecount tourney_stats matches 0..3 run function master:timer/decisiondome/2min
execute if score gamecount tourney_stats matches 4 run function master:timer/decisiondome/7min
execute if score gamecount tourney_stats matches 5..7 run function master:timer/decisiondome/2min
execute if score gamecount tourney_stats matches 8 run function master:timer/decisiondome/1min

execute if score gamecount tourney_stats matches 8 run schedule function decisiondome:finalduel/announce 2s
execute if score gamecount tourney_stats matches 8 run function decisiondome:finalduel/decide
function decisiondome:player
schedule function decisiondome:setup 10t
schedule clear master:timer/backtohub/sec

execute if score gamecount tourney_stats matches 4 run title @a times 10 60 10
execute if score gamecount tourney_stats matches 4 run title @a title "§e中场休息时间！"
execute if score gamecount tourney_stats matches 4 run title @a subtitle ""
# Fix the elevator, no fix for remix
execute if score crashed elevatorjoke matches 1 if block -9969 114 -9998 air run tellraw @a ["§e在上一个游戏期间，电梯§k维保§r§f人§7员把电§7梯§k修好了！"]
#execute if score crashed elevatorjoke matches 1 if block -9969 114 -9998 air run fill -9973 117 -9999 -9973 119 -10001 white_stained_glass_pane
#execute if score crashed elevatorjoke matches 1 if block -9969 114 -9998 air run fill -9971 114 -9998 -9967 114 -10002 iron_block

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
