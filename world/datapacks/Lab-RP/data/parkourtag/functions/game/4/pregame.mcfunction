
gamemode spectator @a[team=spec]
gamemode adventure @a[team=!spec]
function master:sfx/parkourtag

forceload add -2520 -2200
forceload add -2480 -2200
forceload add -2520 -2400
forceload add -2480 -2400
forceload add -2520 -2600
forceload add -2480 -2600
forceload add -2520 -2800
forceload add -2480 -2800
forceload add -2720 -2200
forceload add -2680 -2200
forceload add -2720 -2400
forceload add -2680 -2400
forceload add -2720 -2600
forceload add -2680 -2600
forceload add -2720 -2800
forceload add -2680 -2800

scoreboard players set gameflag pkt_game 1
scoreboard players operation currenthunt pkt_stats = allhuntbase pkt_stats
tag @a remove hunter
tag @a remove runner
kill @e[type=item]
kill @e[type=arrow]
clear @a

scoreboard players set redremain pkt_game 0
scoreboard players set blueremain pkt_game 0
scoreboard players set greenremain pkt_game 0
scoreboard players set yellowremain pkt_game 0
scoreboard players set cyanremain pkt_game 0
scoreboard players set orangeremain pkt_game 0
scoreboard players set pinkremain pkt_game 0
scoreboard players set purpleremain pkt_game 0

tp @a[team=red] -2478.5 105.00 -2199.5 90 0
tp @a[team=cyan] -2520.5 105.00 -2199.5 -90 0
tp @a[team=blue] -2478.5 105.00 -2399.5 90 0
tp @a[team=pink] -2520.5 105.00 -2399.5 -90 0
tp @a[team=green] -2478.5 105.00 -2599.5 90 0
tp @a[team=orange] -2520.5 105.00 -2599.5 -90 0
tp @a[team=yellow] -2478.5 105.00 -2799.5 90 0
tp @a[team=purple] -2520.5 105.00 -2799.5 -90 0

spawnpoint @a[team=red] -2478 105 -2200 90
spawnpoint @a[team=cyan] -2678 105 -2200 90
spawnpoint @a[team=blue] -2478 105 -2400 90
spawnpoint @a[team=pink] -2678 105 -2400 90
spawnpoint @a[team=green] -2478 105 -2600 90
spawnpoint @a[team=orange] -2678 105 -2600 90
spawnpoint @a[team=yellow] -2478 105 -2800 90
spawnpoint @a[team=purple] -2678 105 -2800 90
#region Play Texts
title @a times 10 40 10
title @a title "回合 4/7"
title @a[team=red] subtitle ["",{"text": "红队","color": "red"}," vs. ",{"text": "青队","color":"dark_aqua"}]
title @a[team=blue] subtitle ["",{"text": "蓝队","color": "blue"}," vs. ",{"text": "粉队","color":"light_purple"}]
title @a[team=green] subtitle ["",{"text": "绿队","color": "green"}," vs. ",{"text": "橙队","color":"gold"}]
title @a[team=yellow] subtitle ["",{"text": "黄队","color": "yellow"}," vs. ",{"text": "紫队","color": "dark_purple"}]
title @a[team=cyan] subtitle ["",{"text": "青队","color":"dark_aqua"}," vs. ",{"text": "红队","color": "red"}]
title @a[team=pink] subtitle ["",{"text": "粉队","color":"light_purple"}," vs. ",{"text": "蓝队","color": "blue"}]
title @a[team=orange] subtitle ["",{"text": "橙队","color":"gold"}," vs. ",{"text": "绿队","color": "green"}]
title @a[team=purple] subtitle ["",{"text": "紫队","color": "dark_purple"}," vs. ",{"text": "黄队","color": "yellow"}]
#endregion

# Reset Barriers

execute if score map pkt_game matches 4 run function parkourtag:map/4/pregame
execute if score map pkt_game matches 5 run function parkourtag:map/5/pregame

# Reset attributes
execute as @a run attribute @s generic.attack_damage base set -1.0
effect clear @a
effect give @a fire_resistance 16 0 true
effect give @a instant_health 20 0 true
effect give @a night_vision 10000 0 true
# Reset Killboards
scoreboard players set @a greenKills 0
scoreboard players set @a blueKills 0
scoreboard players set @a greenKills 0
scoreboard players set @a yellowKills 0
scoreboard players set @a pinkKills 0
scoreboard players set @a purpleKills 0
scoreboard players set @a cyanKills 0
scoreboard players set @a orangeKills 0

scoreboard players set @a killedByRed 0
scoreboard players set @a killedByBlue 0
scoreboard players set @a killedByGreen 0
scoreboard players set @a killedByYellow 0
scoreboard players set @a killedByPink 0
scoreboard players set @a killedByPurple 0
scoreboard players set @a killedByCyan 0
scoreboard players set @a killedByOrange 0
# 
function master:timer/selkit/parkourtag
function parkourtag:scoreboard/game4
schedule function parkourtag:game/4/ready 15s
scoreboard objectives setdisplay below_name
scoreboard players set completed pkt_game 0
scoreboard players set round pkt_game 4

scoreboard players set round_time pkt_game 0

# logs online players

scoreboard players set redplayers pkt_cache 0
scoreboard players set blueplayers pkt_cache 0
scoreboard players set greenplayers pkt_cache 0
scoreboard players set yellowplayers pkt_cache 0
scoreboard players set cyanplayers pkt_cache 0
scoreboard players set pinkplayers pkt_cache 0
scoreboard players set orangeplayers pkt_cache 0
scoreboard players set purpleplayers pkt_cache 0

execute as @a[team=red,gamemode=adventure] run scoreboard players add redplayers pkt_cache 1
execute as @a[team=blue,gamemode=adventure] run scoreboard players add blueplayers pkt_cache 1
execute as @a[team=green,gamemode=adventure] run scoreboard players add greenplayers pkt_cache 1
execute as @a[team=yellow,gamemode=adventure] run scoreboard players add yellowplayers pkt_cache 1
execute as @a[team=cyan,gamemode=adventure] run scoreboard players add cyanplayers pkt_cache 1
execute as @a[team=pink,gamemode=adventure] run scoreboard players add pinkplayers pkt_cache 1
execute as @a[team=orange,gamemode=adventure] run scoreboard players add orangeplayers pkt_cache 1
execute as @a[team=purple,gamemode=adventure] run scoreboard players add purpleplayers pkt_cache 1

# Status Bar
function parkourtag:statusbar/pregameinit

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> Round roster:"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§c红队","§7 vs."," §3青队"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§9蓝队","§7 vs."," §d粉队"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§a绿队","§7 vs."," §6橙队"]
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§e黄队","§7 vs."," §5紫队"]