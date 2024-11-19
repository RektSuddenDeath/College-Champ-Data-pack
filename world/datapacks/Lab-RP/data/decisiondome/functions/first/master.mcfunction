
clear @a

scoreboard players set ActiveGame tourney_stats 0
scoreboard players set extraGameGrid tourney_stats 0
scoreboard players set 1 dd_games 0
scoreboard players set 2 dd_games 0
scoreboard players set 3 dd_games 0
scoreboard players set 4 dd_games 0
scoreboard players set 5 dd_games 0
scoreboard players set 6 dd_games 0
scoreboard players set 7 dd_games 0
scoreboard players set 8 dd_games 0
scoreboard players set 9 dd_games 0
scoreboard players set 10 dd_games 0
scoreboard players set 11 dd_games 0
scoreboard players set 12 dd_games 0
scoreboard players set 13 dd_games 0
scoreboard players set 14 dd_games 0
scoreboard players set 15 dd_games 0
scoreboard players set 16 dd_games 0
scoreboard players set 17 dd_games 0

#function decisiondome:setpad
function decisiondome:first/initdome
function decisiondome:emptydome
function decisiondome:column/contract

# Intro Part
function decisiondome:first/1
schedule function decisiondome:first/2 8s
schedule function decisiondome:first/3a 16s
schedule function decisiondome:first/4a 21s
schedule function decisiondome:first/5a 26s
schedule function decisiondome:first/6a 31s
schedule function decisiondome:first/7a 36s
schedule function decisiondome:first/8a 41s
schedule function decisiondome:first/9a 46s
schedule function decisiondome:first/10a 51s
schedule function decisiondome:vote/prepare 56s
schedule function decisiondome:vote/start 58s

# Changes sb
team modify placeholder_6 suffix ""
team modify placeholder_6 prefix ["",{"text":"游戏 1/8","color":"aqua","bold": true}]

# Changes Multiplier Board
execute as @e[type=item_frame,tag=multiplier_board] run data merge entity @s {Item:{Count:1b,id:"minecraft:phantom_membrane",tag:{CustomModelData:1010}}}

# Enable Transcript
function master:transcript/init

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7PREPARING §f-> FIRST_DOME"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
tellraw @a[tag=_transcript] ["  §bTranscript >> §fGames used for this event are:"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@e[type=marker,tag=domeanchor,tag=1,limit=1]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@e[type=marker,tag=domeanchor,tag=2,limit=1]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@e[type=marker,tag=domeanchor,tag=3,limit=1]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@e[type=marker,tag=domeanchor,tag=4,limit=1]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@e[type=marker,tag=domeanchor,tag=5,limit=1]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@e[type=marker,tag=domeanchor,tag=6,limit=1]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@e[type=marker,tag=domeanchor,tag=7,limit=1]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> ",{"selector":"@e[type=marker,tag=domeanchor,tag=8,limit=1]"}]