
scoreboard players set RoundActive tourney_stats 1

# set gameflag
scoreboard players set gameflag gr_game 1
# Sound
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1.5
# Title
title @a title ""
title @a subtitle ""
# Gate
scoreboard objectives add gr_gateopen dummy
scoreboard objectives add gr_gateclose dummy
function gr:gate/opener
function gr:gate/closer
# Scoreboard
function gr:scoreboard/start
# Launch Player
fill 15033 115 14969 15033 111 15261 air replace barrier
execute as @a[team=!spec] at @s run fill ~-1 ~ ~1 ~-1 ~2 ~-1 air replace barrier
execute as @a[team=!spec] at @s run fill ~-2 ~ ~1 ~-2 ~2 ~-1 air replace barrier
function gr:launchplayer
# Total Time
scoreboard objectives remove gr_totaltime
scoreboard objectives add gr_totaltime dummy
scoreboard players set ms gr_totaltime 0
function gr:time/igt
# Init first room
function gr:rooms/1/red/master
function gr:rooms/1/blue/master
function gr:rooms/1/green/master
function gr:rooms/1/yellow/master
function gr:rooms/1/pink/master
function gr:rooms/1/purple/master
function gr:rooms/1/orange/master
function gr:rooms/1/cyan/master
# Calculate team count
scoreboard players set total gr_game 0
execute as @r[team=red] run scoreboard players add total gr_game 1
execute as @r[team=blue] run scoreboard players add total gr_game 1
execute as @r[team=green] run scoreboard players add total gr_game 1
execute as @r[team=yellow] run scoreboard players add total gr_game 1
execute as @r[team=orange] run scoreboard players add total gr_game 1
execute as @r[team=pink] run scoreboard players add total gr_game 1
execute as @r[team=cyan] run scoreboard players add total gr_game 1
execute as @r[team=purple] run scoreboard players add total gr_game 1

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §f游戏开始！"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Glowing
effect give @a[team=!spec] glowing infinite 0 true

function gr:removetnt
schedule function gr:removeremovetnt 10t

scoreboard players set OvertimeActive OvertimeMusic 0