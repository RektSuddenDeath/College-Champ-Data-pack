
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
scoreboard objectives add gr_ranking dummy
scoreboard objectives add gr_ranktime dummy
scoreboard objectives add gr_rankmin dummy
scoreboard objectives add gr_ranksec dummy
scoreboard objectives add gr_rankms dummy
tellraw @a ["第4间: ","Bawk Jungle"]

scoreboard players set Step gr_ranking 1
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranktime = @s gr_room4time
execute as @e[type=area_effect_cloud,tag=gr_general,scores={gr_ranktime=0}] run scoreboard players set @s gr_ranktime 200000000
# Transfer to MIN:SEC.MM format
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_rankmin = @s gr_room4time
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranksec = @s gr_room4time
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_rankms = @s gr_room4time
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_rankms %= 100 math
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranksec /= 100 math
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranksec %= 60 math
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_rankmin /= 6000 math
# Phase 1: Only display the first 3 teams
function gr:scoring/calc/phase1
# Phase 2: Scores are given out
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranktime = @s gr_room4time
execute as @e[type=area_effect_cloud,tag=gr_general,scores={gr_ranktime=0}] run scoreboard players set @s gr_ranktime 200000000
scoreboard players set Step gr_ranking 1
scoreboard players set score gr_ranking 168
tellraw @a ""
function gr:scoring/calc/phase2

# Phase 3: Display DNF text for the skill issue.
execute as @e[type=area_effect_cloud,tag=gr_redany] if score @s gr_room4time matches 0 run tellraw @a[team=red] ["","[","§60分","§r]"," §7你的队伍没有完成此房间。"]
execute as @e[type=area_effect_cloud,tag=gr_blueany] if score @s gr_room4time matches 0 run tellraw @a[team=blue] ["","[","§60分","§r]"," §7你的队伍没有完成此房间。"]
execute as @e[type=area_effect_cloud,tag=gr_greenany] if score @s gr_room4time matches 0 run tellraw @a[team=green] ["","[","§60分","§r]"," §7你的队伍没有完成此房间。"]
execute as @e[type=area_effect_cloud,tag=gr_yellowany] if score @s gr_room4time matches 0 run tellraw @a[team=yellow] ["","[","§60分","§r]"," §7你的队伍没有完成此房间。"]
execute as @e[type=area_effect_cloud,tag=gr_cyanany] if score @s gr_room4time matches 0 run tellraw @a[team=cyan] ["","[","§60分","§r]"," §7你的队伍没有完成此房间。"]
execute as @e[type=area_effect_cloud,tag=gr_orangeany] if score @s gr_room4time matches 0 run tellraw @a[team=orange] ["","[","§60分","§r]"," §7你的队伍没有完成此房间。"]
execute as @e[type=area_effect_cloud,tag=gr_pinkany] if score @s gr_room4time matches 0 run tellraw @a[team=pink] ["","[","§60分","§r]"," §7你的队伍没有完成此房间。"]
execute as @e[type=area_effect_cloud,tag=gr_purpleany] if score @s gr_room4time matches 0 run tellraw @a[team=purple] ["","[","§60分","§r]"," §7你的队伍没有完成此房间。"]
# Income Sound is played for players who have scored this period.
execute as @e[type=area_effect_cloud,tag=gr_redany] if score @s gr_room4time matches 1.. run execute as @a[team=red] at @s run playsound sound.acquire record @s ~ ~ ~ 1.2 1
execute as @e[type=area_effect_cloud,tag=gr_blueany] if score @s gr_room4time matches 1.. run execute as @a[team=blue] at @s run playsound sound.acquire record @s ~ ~ ~ 1.2 1
execute as @e[type=area_effect_cloud,tag=gr_greenany] if score @s gr_room4time matches 1.. run execute as @a[team=green] at @s run playsound sound.acquire record @s ~ ~ ~ 1.2 1
execute as @e[type=area_effect_cloud,tag=gr_yellowany] if score @s gr_room4time matches 1.. run execute as @a[team=yellow] at @s run playsound sound.acquire record @s ~ ~ ~ 1.2 1
execute as @e[type=area_effect_cloud,tag=gr_cyanany] if score @s gr_room4time matches 1.. run execute as @a[team=cyan] at @s run playsound sound.acquire record @s ~ ~ ~ 1.2 1
execute as @e[type=area_effect_cloud,tag=gr_orangeany] if score @s gr_room4time matches 1.. run execute as @a[team=orange] at @s run playsound sound.acquire record @s ~ ~ ~ 1.2 1
execute as @e[type=area_effect_cloud,tag=gr_pinkany] if score @s gr_room4time matches 1.. run execute as @a[team=pink] at @s run playsound sound.acquire record @s ~ ~ ~ 1.2 1
execute as @e[type=area_effect_cloud,tag=gr_purpleany] if score @s gr_room4time matches 1.. run execute as @a[team=purple] at @s run playsound sound.acquire record @s ~ ~ ~ 1.2 1
# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§fRoom 4 times:"]
execute as @e[type=area_effect_cloud,tag=gr_redany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_blueany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_greenany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_yellowany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_cyanany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_orangeany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_pinkany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_purpleany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

# Cleanup
scoreboard objectives remove gr_rankmin
scoreboard objectives remove gr_ranksec
scoreboard objectives remove gr_rankms
scoreboard objectives remove gr_ranktime
scoreboard objectives remove gr_ranking
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
function gr:scoreboard/refresh