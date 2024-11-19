scoreboard players set RoundActive tourney_stats 0
# Game Flag
scoreboard players set gameflag sba_game 0
execute as @a run scoreboard players operation @s sba_gamekills += @s sba_roundkills

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
execute if score teams sba_game matches 1.. run tellraw @a[gamemode=!survival] ["","§b[§r戭§b]",{"text": "§b时间到！"},{"selector":"@a[gamemode=survival]"},{"text": "§b是最后存活的玩家！"}]
execute if score teams sba_game matches 0 run tellraw @a[gamemode=!survival] ["","§b[§r戭§b]","§b 时间到！本局无人生还！"]

tellraw @a[gamemode=survival] ["","[§6+",{"score":{"name": "win","objective": "sba_stats"},"color": "gold"},{"text": "分","color": "gold"},"] §a[§r彀§a]",{"text": "时间到！你是最后存活的玩家之一！"}]
execute as @a[gamemode=survival] run playsound minecraft:majoracquire record @s ~ ~ ~ 1

scoreboard players operation @a[gamemode=survival] sba_indvscore += win sba_stats
scoreboard players operation @a[gamemode=survival] sba_roundscore += win sba_stats

execute as @a[gamemode=survival] run scoreboard players set @s sba_recap_r1 1

# Personal Scorings
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局淘汰了"},{"score":{"name": "@s","objective": "sba_roundkills"},"color":"aqua"},{"text": "名对手。"}]
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局获得了"},{"score":{"name": "@s","objective": "sba_roundscore"},"color":"gold"},{"text": "分。"}]

# Next Round in 10s
function master:timer/nextround/10s
schedule function skybattle:round/2/init 10s

# Regenerate arena in 10s
execute if score map sba_game matches 1 run schedule function skybattle:structure/zone1/classic/place 10s
execute if score map sba_game matches 2 run schedule function skybattle:structure/zone1/sandcastle/place 10s
execute if score map sba_game matches 3 run schedule function skybattle:structure/zone1/wasteland/place 10s
execute if score map sba_game matches 4 run schedule function skybattle:structure/zone1/cakesland/place 10s