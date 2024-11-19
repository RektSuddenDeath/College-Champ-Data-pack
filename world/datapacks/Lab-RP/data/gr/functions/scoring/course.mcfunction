
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
scoreboard objectives add gr_ranking dummy
scoreboard objectives add gr_ranktime dummy
scoreboard objectives add gr_rankmin dummy
scoreboard objectives add gr_ranksec dummy
scoreboard objectives add gr_rankms dummy
tellraw @a ["全场比赛完成额外奖励"]

scoreboard players set Step gr_ranking 1
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranktime = @s gr_coursetime
# Transfer to MIN:SEC.MM format
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_rankmin = @s gr_coursetime
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranksec = @s gr_coursetime
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_rankms = @s gr_coursetime
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_rankms %= 100 math
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranksec /= 100 math
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranksec %= 60 math
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_rankmin /= 6000 math
# Phase 1: Only display the first 3 teams
function gr:scoring/calc/phase1
# Phase 2: Scores are given out
execute as @e[type=area_effect_cloud,tag=gr_general] run scoreboard players operation @s gr_ranktime = @s gr_coursetime
scoreboard players set Step gr_ranking 1
scoreboard players set score gr_ranking 520
tellraw @a ""
function gr:scoring/calc/phase2alt

# Phase 3: Display DNF text for the skill issue.
execute as @e[type=area_effect_cloud,tag=gr_redany] if score @s gr_coursetime matches 0 run tellraw @a[team=red] ["","[","§60分","§r]"," §7你的队伍没有完成比赛。"]
execute as @e[type=area_effect_cloud,tag=gr_blueany] if score @s gr_coursetime matches 0 run tellraw @a[team=blue] ["","[","§60分","§r]"," §7你的队伍没有完成比赛。"]
execute as @e[type=area_effect_cloud,tag=gr_greenany] if score @s gr_coursetime matches 0 run tellraw @a[team=green] ["","[","§60分","§r]"," §7你的队伍没有完成比赛。"]
execute as @e[type=area_effect_cloud,tag=gr_yellowany] if score @s gr_coursetime matches 0 run tellraw @a[team=yellow] ["","[","§60分","§r]"," §7你的队伍没有完成比赛。"]
execute as @e[type=area_effect_cloud,tag=gr_cyanany] if score @s gr_coursetime matches 0 run tellraw @a[team=cyan] ["","[","§60分","§r]"," §7你的队伍没有完成比赛。"]
execute as @e[type=area_effect_cloud,tag=gr_orangeany] if score @s gr_coursetime matches 0 run tellraw @a[team=orange] ["","[","§60分","§r]"," §7你的队伍没有完成比赛。"]
execute as @e[type=area_effect_cloud,tag=gr_pinkany] if score @s gr_coursetime matches 0 run tellraw @a[team=pink] ["","[","§60分","§r]"," §7你的队伍没有完成比赛。"]
execute as @e[type=area_effect_cloud,tag=gr_purpleany] if score @s gr_coursetime matches 0 run tellraw @a[team=purple] ["","[","§60分","§r]"," §7你的队伍没有完成比赛。"]
# Income Sound is played for players who have scored this period.
execute as @e[type=area_effect_cloud,tag=gr_redany] if score @s gr_coursetime matches 1.. run execute as @a[team=red] at @s run playsound sound.majoracquire record @s ~ ~ ~ 1
execute as @e[type=area_effect_cloud,tag=gr_blueany] if score @s gr_coursetime matches 1.. run execute as @a[team=blue] at @s run playsound sound.majoracquire record @s ~ ~ ~ 1
execute as @e[type=area_effect_cloud,tag=gr_greenany] if score @s gr_coursetime matches 1.. run execute as @a[team=green] at @s run playsound sound.majoracquire record @s ~ ~ ~ 1
execute as @e[type=area_effect_cloud,tag=gr_yellowany] if score @s gr_coursetime matches 1.. run execute as @a[team=yellow] at @s run playsound sound.majoracquire record @s ~ ~ ~ 1
execute as @e[type=area_effect_cloud,tag=gr_cyanany] if score @s gr_coursetime matches 1.. run execute as @a[team=cyan] at @s run playsound sound.majoracquire record @s ~ ~ ~ 1
execute as @e[type=area_effect_cloud,tag=gr_orangeany] if score @s gr_coursetime matches 1.. run execute as @a[team=orange] at @s run playsound sound.majoracquire record @s ~ ~ ~ 1
execute as @e[type=area_effect_cloud,tag=gr_pinkany] if score @s gr_coursetime matches 1.. run execute as @a[team=pink] at @s run playsound sound.majoracquire record @s ~ ~ ~ 1
execute as @e[type=area_effect_cloud,tag=gr_purpleany] if score @s gr_coursetime matches 1.. run execute as @a[team=purple] at @s run playsound sound.majoracquire record @s ~ ~ ~ 1
# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> ","§fCourse times:"]
execute as @e[type=area_effect_cloud,tag=gr_redany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_blueany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_greenany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_yellowany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_cyanany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_orangeany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_pinkany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]
execute as @e[type=area_effect_cloud,tag=gr_purpleany] run tellraw @a[tag=_transcript] ["","  §bTranscript >> ",{"selector":"@s"},": ",{"score":{"name": "@s","objective": "gr_rankmin"}},":",{"score":{"name": "@s","objective": "gr_ranksec"}},".",{"score":{"name": "@s","objective": "gr_rankms"}}]

# Overtime
execute if score red gr_ot_reduce matches 4.. run scoreboard players operation red gr_teamscore -= red gr_ot_reduce
execute if score blue gr_ot_reduce matches 4.. run scoreboard players operation blue gr_teamscore -= blue gr_ot_reduce
execute if score green gr_ot_reduce matches 4.. run scoreboard players operation green gr_teamscore -= green gr_ot_reduce
execute if score yellow gr_ot_reduce matches 4.. run scoreboard players operation yellow gr_teamscore -= yellow gr_ot_reduce
execute if score cyan gr_ot_reduce matches 4.. run scoreboard players operation cyan gr_teamscore -= cyan gr_ot_reduce
execute if score orange gr_ot_reduce matches 4.. run scoreboard players operation orange gr_teamscore -= orange gr_ot_reduce
execute if score pink gr_ot_reduce matches 4.. run scoreboard players operation pink gr_teamscore -= pink gr_ot_reduce
execute if score purple gr_ot_reduce matches 4.. run scoreboard players operation purple gr_teamscore -= purple gr_ot_reduce

execute if score red gr_ot_reduce matches 4.. run tellraw @a[team=red] ["[§c-",{"score":{"name": "red","objective": "gr_ot_reduce"},"color": "red"},"§c分§f] 在加时期间完成比赛"]
execute if score blue gr_ot_reduce matches 4.. run tellraw @a[team=blue] ["[§c-",{"score":{"name": "blue","objective": "gr_ot_reduce"},"color": "red"},"§c分§f] 在加时期间完成比赛"]
execute if score green gr_ot_reduce matches 4.. run tellraw @a[team=green] ["[§c-",{"score":{"name": "green","objective": "gr_ot_reduce"},"color": "red"},"§c分§f] 在加时期间完成比赛"]
execute if score yellow gr_ot_reduce matches 4.. run tellraw @a[team=yellow] ["[§c-",{"score":{"name": "yellow","objective": "gr_ot_reduce"},"color": "red"},"§c分§f] 在加时期间完成比赛"]
execute if score cyan gr_ot_reduce matches 4.. run tellraw @a[team=cyan] ["[§c-",{"score":{"name": "cyan","objective": "gr_ot_reduce"},"color": "red"},"§c分§f] 在加时期间完成比赛"]
execute if score orange gr_ot_reduce matches 4.. run tellraw @a[team=orange] ["[§c-",{"score":{"name": "orange","objective": "gr_ot_reduce"},"color": "red"},"§c分§f] 在加时期间完成比赛"]
execute if score pink gr_ot_reduce matches 4.. run tellraw @a[team=pink] ["[§c-",{"score":{"name": "pink","objective": "gr_ot_reduce"},"color": "red"},"§c分§f] 在加时期间完成比赛"]
execute if score purple gr_ot_reduce matches 4.. run tellraw @a[team=purple] ["[§c-",{"score":{"name": "purple","objective": "gr_ot_reduce"},"color": "red"},"§c分§f] 在加时期间完成比赛"]

# Cleanup
scoreboard objectives remove gr_rankmin
scoreboard objectives remove gr_ranksec
scoreboard objectives remove gr_rankms
scoreboard objectives remove gr_ranktime
scoreboard objectives remove gr_ranking
tellraw @a [{"color":"green","text":"———————————————————————————————————"}]
function gr:scoreboard/refresh