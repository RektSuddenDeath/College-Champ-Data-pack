
scoreboard players set RoundActive tourney_stats 1

scoreboard players set gameflag pkt_game 1

execute as @a[team=red,tag=runner] run scoreboard players add redremain pkt_game 1
execute as @a[team=blue,tag=runner] run scoreboard players add blueremain pkt_game 1
execute as @a[team=green,tag=runner] run scoreboard players add greenremain pkt_game 1
execute as @a[team=yellow,tag=runner] run scoreboard players add yellowremain pkt_game 1
execute as @a[team=cyan,tag=runner] run scoreboard players add cyanremain pkt_game 1
execute as @a[team=pink,tag=runner] run scoreboard players add pinkremain pkt_game 1
execute as @a[team=orange,tag=runner] run scoreboard players add orangeremain pkt_game 1
execute as @a[team=purple,tag=runner] run scoreboard players add purpleremain pkt_game 1

execute as @a at @s run playsound minecraft:blocknote_block.guitar ambient @s ~ ~ ~ 2 2
execute as @a at @s run playsound minecraft:sound.start record @s ~ ~ ~ 1

# Starts Necessary Detections
function master:timer/timeleft/1min
function parkourtag:game/7/detection
function parkourtag:ranking
function parkourtag:general/pt

# Clears Barriers
execute if score map pkt_game matches 4 run function parkourtag:map/4/begin
execute if score map pkt_game matches 5 run function parkourtag:map/5/begin
#  
title @a title " "
title @a subtitle " "

give @a[tag=runner] ender_pearl{display:{Name:'"§r§6§l火眼金睛"'}} 2
give @a[tag=hunter] splash_potion{display:{Name:'"§r§6§l急速药水 （8.5秒）"'},CustomPotionColor:65382,custom_potion_effects:[{id:"minecraft:speed",amplifier:1,duration:170}]}
function parkourtag:game/7/tool

#Status bar
function parkourtag:statusbar/startinit

# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §fRound Started!"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
tellraw @a[tag=_transcript] ["  §bTranscript >> §fHunters: ",{"selector":"@a[tag=hunter]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> §fRunners: "]
tellraw @a[tag=_transcript] ["  §bTranscript >> §c红队: ",{"selector":"@a[team=red,tag=runner]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> §9蓝队: ",{"selector":"@a[team=blue,tag=runner]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> §a绿队: ",{"selector":"@a[team=green,tag=runner]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> §e黄队: ",{"selector":"@a[team=yellow,tag=runner]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> §3青队: ",{"selector":"@a[team=cyan,tag=runner]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> §d粉队: ",{"selector":"@a[team=pink,tag=runner]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> §6橙队: ",{"selector":"@a[team=orange,tag=runner]"}]
tellraw @a[tag=_transcript] ["  §bTranscript >> §5紫队: ",{"selector":"@a[team=purple,tag=runner]"}]