
# Add Completions
scoreboard players add yellow bm_completions 1

scoreboard players add yellow bm_goldencomps 1

# Scoring

## Get Which placement is the completion is at
execute if score @s bm_plotNo matches 1 run scoreboard players add 1 bm_totalDones_g 1
execute if score @s bm_plotNo matches 2 run scoreboard players add 2 bm_totalDones_g 1
execute if score @s bm_plotNo matches 3 run scoreboard players add 3 bm_totalDones_g 1
execute if score @s bm_plotNo matches 4 run scoreboard players add 4 bm_totalDones_g 1
execute if score @s bm_plotNo matches 5 run scoreboard players add 5 bm_totalDones_g 1
execute if score @s bm_plotNo matches 6 run scoreboard players add 6 bm_totalDones_g 1
execute if score @s bm_plotNo matches 7 run scoreboard players add 7 bm_totalDones_g 1
execute if score @s bm_plotNo matches 8 run scoreboard players add 8 bm_totalDones_g 1
execute if score @s bm_plotNo matches 9 run scoreboard players add 9 bm_totalDones_g 1
execute if score @s bm_plotNo matches 10 run scoreboard players add 10 bm_totalDones_g 1
execute if score @s bm_plotNo matches 11 run scoreboard players add 11 bm_totalDones_g 1
execute if score @s bm_plotNo matches 12 run scoreboard players add 12 bm_totalDones_g 1
execute if score @s bm_plotNo matches 13 run scoreboard players add 13 bm_totalDones_g 1
execute if score @s bm_plotNo matches 14 run scoreboard players add 14 bm_totalDones_g 1

execute if score @s bm_plotNo matches 1 run scoreboard players operation @s bm_compNo = 1 bm_totalDones_g
execute if score @s bm_plotNo matches 2 run scoreboard players operation @s bm_compNo = 2 bm_totalDones_g
execute if score @s bm_plotNo matches 3 run scoreboard players operation @s bm_compNo = 3 bm_totalDones_g
execute if score @s bm_plotNo matches 4 run scoreboard players operation @s bm_compNo = 4 bm_totalDones_g
execute if score @s bm_plotNo matches 5 run scoreboard players operation @s bm_compNo = 5 bm_totalDones_g
execute if score @s bm_plotNo matches 6 run scoreboard players operation @s bm_compNo = 6 bm_totalDones_g
execute if score @s bm_plotNo matches 7 run scoreboard players operation @s bm_compNo = 7 bm_totalDones_g
execute if score @s bm_plotNo matches 8 run scoreboard players operation @s bm_compNo = 8 bm_totalDones_g
execute if score @s bm_plotNo matches 9 run scoreboard players operation @s bm_compNo = 9 bm_totalDones_g
execute if score @s bm_plotNo matches 10 run scoreboard players operation @s bm_compNo = 10 bm_totalDones_g
execute if score @s bm_plotNo matches 11 run scoreboard players operation @s bm_compNo = 11 bm_totalDones_g
execute if score @s bm_plotNo matches 12 run scoreboard players operation @s bm_compNo = 12 bm_totalDones_g
execute if score @s bm_plotNo matches 13 run scoreboard players operation @s bm_compNo = 13 bm_totalDones_g
execute if score @s bm_plotNo matches 14 run scoreboard players operation @s bm_compNo = 14 bm_totalDones_g

## Calculates how many score should be given to team
execute if score @s bm_compNo matches 1 run scoreboard players set @s bm_earnScore 210
execute if score @s bm_compNo matches 2 run scoreboard players set @s bm_earnScore 185
execute if score @s bm_compNo matches 3 run scoreboard players set @s bm_earnScore 165
execute if score @s bm_compNo matches 4 run scoreboard players set @s bm_earnScore 150
execute if score @s bm_compNo matches 5 run scoreboard players set @s bm_earnScore 135
execute if score @s bm_compNo matches 6 run scoreboard players set @s bm_earnScore 125
execute if score @s bm_compNo matches 7 run scoreboard players set @s bm_earnScore 115
execute if score @s bm_compNo matches 8 run scoreboard players set @s bm_earnScore 105

scoreboard players operation yellow bm_teamscore += @s bm_earnScore

# Text and visuals
summon firework_rocket ~-2 ~4 ~3 {Life:10000,LifeTime:0,FireworksItem:{id:"firework_rocket",Count:1,tag:{Fireworks:{Flight:-2,Explosions:[{Type:0,Flicker:true,Colors:[I;16775936]}]}}}}

tellraw @a[team=!yellow] ["","§e黄队","§7第",{"score":{"name": "@s","objective": "bm_compNo"},"color": "yellow"},"§7个完成了","§6黄金建筑 #",{"score":{"name": "@s","objective": "bm_plotNo"},"color":"gold"}]
tellraw @a[team=yellow] ["[§6+§r",{"score":{"name": "@s","objective": "bm_earnScore"},"color": "gold"},"§6分§f] ","§7你","§7第",{"score":{"name": "@s","objective": "bm_compNo"},"color": "yellow"},"§7个完成了","§6黄金建筑 #",{"score":{"name": "@s","objective": "bm_plotNo"},"color":"gold"}]

execute as @a[team=yellow] at @s run playsound minecraft:sound.bigcoins record @s
execute as @a[team=yellow] at @s run playsound minecraft:sound.majoracquire record @s
# After Operations

fill ~ ~1 ~ ~6 ~6 ~6 air replace
execute as @e[type=marker,tag=zone_right,tag=yellow] run scoreboard players operation @s bm_rightplotNo = yellow bm_goldencomps
execute as @e[type=marker,tag=zone_right,tag=yellow] run scoreboard players operation @s bm_rightplotNo += 1 math

execute as @e[type=marker,tag=zone_right,tag=yellow,tag=bm_example,limit=1,sort=nearest] at @s run function buildmart:copy/find_golden
