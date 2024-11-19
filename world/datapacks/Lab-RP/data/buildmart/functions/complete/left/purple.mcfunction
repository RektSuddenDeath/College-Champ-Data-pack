
# Add Completions
scoreboard players add purple bm_completions 1

scoreboard players add purple bm_normalcomps 1

# Scoring

## Get Which placement is the completion is at
execute if score @s bm_plotNo matches 1 run scoreboard players add 1 bm_totalDones_n 1
execute if score @s bm_plotNo matches 2 run scoreboard players add 2 bm_totalDones_n 1
execute if score @s bm_plotNo matches 3 run scoreboard players add 3 bm_totalDones_n 1
execute if score @s bm_plotNo matches 4 run scoreboard players add 4 bm_totalDones_n 1
execute if score @s bm_plotNo matches 5 run scoreboard players add 5 bm_totalDones_n 1
execute if score @s bm_plotNo matches 6 run scoreboard players add 6 bm_totalDones_n 1
execute if score @s bm_plotNo matches 7 run scoreboard players add 7 bm_totalDones_n 1
execute if score @s bm_plotNo matches 8 run scoreboard players add 8 bm_totalDones_n 1
execute if score @s bm_plotNo matches 9 run scoreboard players add 9 bm_totalDones_n 1
execute if score @s bm_plotNo matches 10 run scoreboard players add 10 bm_totalDones_n 1
execute if score @s bm_plotNo matches 11 run scoreboard players add 11 bm_totalDones_n 1
execute if score @s bm_plotNo matches 12 run scoreboard players add 12 bm_totalDones_n 1
execute if score @s bm_plotNo matches 13 run scoreboard players add 13 bm_totalDones_n 1
execute if score @s bm_plotNo matches 14 run scoreboard players add 14 bm_totalDones_n 1

execute if score @s bm_plotNo matches 1 run scoreboard players operation @s bm_compNo = 1 bm_totalDones_n
execute if score @s bm_plotNo matches 2 run scoreboard players operation @s bm_compNo = 2 bm_totalDones_n
execute if score @s bm_plotNo matches 3 run scoreboard players operation @s bm_compNo = 3 bm_totalDones_n
execute if score @s bm_plotNo matches 4 run scoreboard players operation @s bm_compNo = 4 bm_totalDones_n
execute if score @s bm_plotNo matches 5 run scoreboard players operation @s bm_compNo = 5 bm_totalDones_n
execute if score @s bm_plotNo matches 6 run scoreboard players operation @s bm_compNo = 6 bm_totalDones_n
execute if score @s bm_plotNo matches 7 run scoreboard players operation @s bm_compNo = 7 bm_totalDones_n
execute if score @s bm_plotNo matches 8 run scoreboard players operation @s bm_compNo = 8 bm_totalDones_n
execute if score @s bm_plotNo matches 9 run scoreboard players operation @s bm_compNo = 9 bm_totalDones_n
execute if score @s bm_plotNo matches 10 run scoreboard players operation @s bm_compNo = 10 bm_totalDones_n
execute if score @s bm_plotNo matches 11 run scoreboard players operation @s bm_compNo = 11 bm_totalDones_n
execute if score @s bm_plotNo matches 12 run scoreboard players operation @s bm_compNo = 12 bm_totalDones_n
execute if score @s bm_plotNo matches 13 run scoreboard players operation @s bm_compNo = 13 bm_totalDones_n
execute if score @s bm_plotNo matches 14 run scoreboard players operation @s bm_compNo = 14 bm_totalDones_n

## Calculates how many score should be given to team
execute if score @s bm_compNo matches 1 run scoreboard players set @s bm_earnScore 130
execute if score @s bm_compNo matches 2 run scoreboard players set @s bm_earnScore 115
execute if score @s bm_compNo matches 3 run scoreboard players set @s bm_earnScore 105
execute if score @s bm_compNo matches 4 run scoreboard players set @s bm_earnScore 95
execute if score @s bm_compNo matches 5 run scoreboard players set @s bm_earnScore 85
execute if score @s bm_compNo matches 6 run scoreboard players set @s bm_earnScore 75
execute if score @s bm_compNo matches 7 run scoreboard players set @s bm_earnScore 70
execute if score @s bm_compNo matches 8 run scoreboard players set @s bm_earnScore 65

scoreboard players operation purple bm_teamscore += @s bm_earnScore

# Text and visuals
summon firework_rocket ~-2 ~4 ~3 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:true,Colors:[I;8388863]}]}}}}

tellraw @a[team=!purple] ["","§5紫队","§7第",{"score":{"name": "@s","objective": "bm_compNo"},"color": "yellow"},"§7个完成了","§a普通建筑 #",{"score":{"name": "@s","objective": "bm_plotNo"},"color":"green"}]
tellraw @a[team=purple] ["[§6+§r",{"score":{"name": "@s","objective": "bm_earnScore"},"color": "gold"},"§6分§f] ","§7你","§7第",{"score":{"name": "@s","objective": "bm_compNo"},"color": "yellow"},"§7个完成了","§a普通建筑 #",{"score":{"name": "@s","objective": "bm_plotNo"},"color":"green"}]

execute as @a[team=purple] at @s run playsound minecraft:sound.bigcoins record @s
execute as @a[team=purple] at @s run playsound minecraft:sound.acquire record @s
# After Operations

fill ~ ~1 ~ ~6 ~6 ~6 air replace
execute as @e[type=marker,tag=zone_left,tag=purple] run scoreboard players operation @s bm_leftplotNo = purple bm_normalcomps
execute as @e[type=marker,tag=zone_left,tag=purple] run scoreboard players operation @s bm_leftplotNo += 2 math

execute as @e[type=marker,tag=zone_left,tag=purple,tag=bm_example,limit=1,sort=nearest] at @s run function buildmart:copy/find_normal_left
