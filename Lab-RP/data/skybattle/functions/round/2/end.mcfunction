
scoreboard players set RoundActive tourney_stats 0

# Game Flag
scoreboard players set gameflag sba_game 0
execute as @a run scoreboard players operation @s sba_gamekills += @s sba_roundkills
# Clear center
kill @e[type=area_effect_cloud,tag=bordercenter]
kill @e[type=item]
# SFX and Title
stopsound @a voice minecraft:music.skybattle
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s
title @a times 0 60 20
title @a title "§c§l回合结束！"
title @a actionbar ""

effect give @a resistance 15 5 true
effect give @a fire_resistance 15 5 true

# Win Announce & Win PT
execute if score teams sba_game matches 1.. run tellraw @a[gamemode=!survival] ["","§b[§r戭§b] ",{"selector":"@a[gamemode=survival]"},"§b是最后存活的玩家！"]
execute if score teams sba_game matches 0 run tellraw @a[gamemode=!survival] ["","§b[§r戭§b] ","§b本局无人生还！"]
tellraw @a[gamemode=survival] ["","[§6+",{"score":{"name": "win","objective": "sba_stats"},"color": "gold"},{"text": "分","color": "gold"},"] §a[§r彀§a] ","§a§l你是最后存活的玩家！"]
execute as @a[gamemode=survival] at @s run playsound minecraft:majoracquire record @s ~ ~ ~ 1

scoreboard players operation @a[gamemode=survival] sba_indvscore += win sba_stats
scoreboard players operation @a[gamemode=survival] sba_roundscore += win sba_stats

execute as @a[gamemode=survival] run scoreboard players set @s sba_recap_r2 1

# Personal Scorings
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局淘汰了"},{"score":{"name": "@s","objective": "sba_roundkills"},"color":"aqua"},{"text": "名对手。"}]
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局获得了"},{"score":{"name": "@s","objective": "sba_roundscore"},"color":"gold"},{"text": "分。"}]

# Next Round in 10s
function master:timer/nextround/10s
schedule function skybattle:round/3/init 10s
schedule function utils:blackscreen/5_20_5 195t

# no more fireworks
schedule clear utils:firework_death

# Regenerate Arena in 10s
execute if score eventmode tourney_stats matches 0 if score map sba_game matches 1 run schedule function skybattle:structure/zone2/classic/place 190t
execute if score eventmode tourney_stats matches 0 if score map sba_game matches 2 run schedule function skybattle:structure/zone2/sandcastle/place 190t
execute if score eventmode tourney_stats matches 0 if score map sba_game matches 3 run schedule function skybattle:structure/zone2/wasteland/place 190t
execute if score eventmode tourney_stats matches 0 if score map sba_game matches 4 run schedule function skybattle:structure/zone2/cakesland/place 190t

# FF Modifier
execute if score modifiers_friendlyfire sba_game matches 1 run scoreboard players set friendly_fire_mod tourney_stats 1
