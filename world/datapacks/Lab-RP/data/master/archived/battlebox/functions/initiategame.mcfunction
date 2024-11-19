
#clears effects
scoreboard players set @a battlebox_kill 0
effect clear @a
tag @a remove bm_ingame

effect give @a fire_resistance 20 0 true
#Changes Map
execute if score gamecount battlebox_game matches 1..1 run clone 550 47 500 587 62 537 1 1 -6
execute if score gamecount battlebox_game matches 1..1 run clone 550 47 500 587 62 537 47 1 -6
execute unless score game1 bb_mapsel = game2 bb_mapsel if score gamecount battlebox_game matches 2..2 run clone 500 47 500 537 62 537 1 1 -6
execute unless score game1 bb_mapsel = game2 bb_mapsel if score gamecount battlebox_game matches 2..2 run clone 500 47 500 537 62 537 47 1 -6
execute unless score game2 bb_mapsel = game3 bb_mapsel if score gamecount battlebox_game matches 3..3 run clone 600 47 500 637 62 537 1 1 -6
execute unless score game2 bb_mapsel = game3 bb_mapsel if score gamecount battlebox_game matches 3..3 run clone 600 47 500 637 62 537 47 1 -6
##解决加更多地图的问题？？
##Map List: Plains, Pyramid, Mines, Wither Factory, Deserted City


#Swaps matchups
function battlebox:swaparena

#Tweak gamerule
scoreboard objectives setdisplay list health
difficulty easy

execute as @a[team=!spec] run attribute @s minecraft:generic.attack_damage base set 1.0

#add previous scores to overall score
scoreboard players operation 红队 overallscore += red battlebox_game
scoreboard players operation 绿队 overallscore += green battlebox_game
scoreboard players operation 蓝队 overallscore += blue battlebox_game
scoreboard players operation 黄队 overallscore += yellow battlebox_game

scoreboard players operation red bb_teamscore += red battlebox_game
scoreboard players operation green bb_teamscore += green battlebox_game
scoreboard players operation blue bb_teamscore += blue battlebox_game
scoreboard players operation yellow bb_teamscore += yellow battlebox_game

#texts
tellraw @a [{"text":"游戏即将开始，你有15秒时间选择职业。\n","color":"yellow"},{"text":"请注意每个队每种职业只能由一个人选择！","color":"gray","italic":true}]
title @a subtitle ["",{"text":"游戏将在"},{"text":"20","color":"red"},{"text":"秒后开始！"}]
title @a title {"text":"选择一个职业！"}

#Teleport Function
execute if score red battlebox_arena matches 1 run tp @a[team=red] 21 7 -13 facing 15 7 -13
execute if score blue battlebox_arena matches 1 run tp @a[team=blue] 21 7 -13 facing 15 7 -13
execute if score green battlebox_arena matches 1 run tp @a[team=green] 21 7 -13 facing 15 7 -13
execute if score yellow battlebox_arena matches 1 run tp @a[team=yellow] 21 7 -13 facing 15 7 -13

execute if score red battlebox_arena matches 2 run tp @a[team=red] 19 6 38 facing 25 7 38
execute if score blue battlebox_arena matches 2 run tp @a[team=blue] 19 6 38 facing 25 7 38
execute if score green battlebox_arena matches 2 run tp @a[team=green] 19 6 38 facing 25 7 38
execute if score yellow battlebox_arena matches 2 run tp @a[team=yellow] 19 6 38 facing 25 7 38

execute if score red battlebox_arena matches 3 run tp @a[team=red] 66 6 38 facing 71 7 38
execute if score blue battlebox_arena matches 3 run tp @a[team=blue] 66 6 38 facing 71 7 38
execute if score green battlebox_arena matches 3 run tp @a[team=green] 66 6 38 facing 71 7 38
execute if score yellow battlebox_arena matches 3 run tp @a[team=yellow] 66 6 38 facing 71 7 38

execute if score red battlebox_arena matches 4 run tp @a[team=red] 66 6 -13 facing 61 7 -13
execute if score blue battlebox_arena matches 4 run tp @a[team=blue] 66 6 -13 facing 61 7 -13
execute if score green battlebox_arena matches 4 run tp @a[team=green] 66 6 -13 facing 61 7 -13
execute if score yellow battlebox_arena matches 4 run tp @a[team=yellow] 66 6 -13 facing 61 7 -13

#Arena recolor

execute if score red battlebox_arena matches 1 run fill 25 5 -8 15 11 -8 red_terracotta replace
execute if score blue battlebox_arena matches 1 run fill 25 5 -8 15 11 -8 blue_terracotta replace
execute if score green battlebox_arena matches 1 run fill 25 5 -8 15 11 -8 green_terracotta replace
execute if score yellow battlebox_arena matches 1 run fill 25 5 -8 15 11 -8 yellow_terracotta replace

execute if score red battlebox_arena matches 2 run fill 15 5 33 25 11 33 red_terracotta replace
execute if score blue battlebox_arena matches 2 run fill 15 5 33 25 11 33 blue_terracotta replace
execute if score green battlebox_arena matches 2 run fill 15 5 33 25 11 33 green_terracotta replace
execute if score yellow battlebox_arena matches 2 run fill 15 5 33 25 11 33 yellow_terracotta replace

execute if score red battlebox_arena matches 3 run fill 61 5 33 71 11 33 red_terracotta replace
execute if score blue battlebox_arena matches 3 run fill 61 5 33 71 11 33 blue_terracotta replace
execute if score green battlebox_arena matches 3 run fill 61 5 33 71 11 33 green_terracotta replace
execute if score yellow battlebox_arena matches 3 run fill 61 5 33 71 11 33 yellow_terracotta replace

execute if score red battlebox_arena matches 4 run fill 61 5 -8 71 11 -8 red_terracotta replace
execute if score blue battlebox_arena matches 4 run fill 61 5 -8 71 11 -8 blue_terracotta replace
execute if score green battlebox_arena matches 4 run fill 61 5 -8 71 11 -8 green_terracotta replace
execute if score yellow battlebox_arena matches 4 run fill 61 5 -8 71 11 -8 yellow_terracotta replace

fill 16 10 -8 24 6 -8 air
fill 24 10 33 16 6 33 air
fill 70 10 33 62 6 33 air
fill 62 10 -8 70 6 -8 air

#kit status reset
scoreboard players set @a battlebox_kit 0

clear @a[team=!spec]

# World border Configuration
# worldborder center 20 13
# worldborder set 10000000
# worldborder warning distance 0
# worldborder damage amount 40


#reset kit selections

setblock 15 6 -14 minecraft:stone_pressure_plate
setblock 15 6 -12 minecraft:stone_pressure_plate
setblock 15 6 -10 minecraft:stone_pressure_plate
setblock 15 6 -16 minecraft:stone_pressure_plate

setblock 25 6 41 minecraft:stone_pressure_plate
setblock 25 6 39 minecraft:stone_pressure_plate
setblock 25 6 37 minecraft:stone_pressure_plate
setblock 25 6 35 minecraft:stone_pressure_plate

setblock 61 6 -16 minecraft:stone_pressure_plate
setblock 61 6 -14 minecraft:stone_pressure_plate
setblock 61 6 -12 minecraft:stone_pressure_plate
setblock 61 6 -10 minecraft:stone_pressure_plate

setblock 71 6 41 minecraft:stone_pressure_plate
setblock 71 6 39 minecraft:stone_pressure_plate
setblock 71 6 37 minecraft:stone_pressure_plate
setblock 71 6 35 minecraft:stone_pressure_plate

#reset map plot

fill 21 5 14 19 5 12 white_wool replace
fill 67 5 12 65 5 14 white_wool replace
fill 16 10 32 24 6 32 glass
fill 16 10 -7 24 6 -7 glass
fill 70 6 32 62 10 32 glass
fill 62 6 -7 70 10 -7 glass

gamemode adventure @a[team=red]
gamemode adventure @a[team=blue]
gamemode adventure @a[team=green]
gamemode adventure @a[team=yellow]

scoreboard objectives setdisplay sidebar battlebox_sb
scoreboard players set red battlebox_game 0
scoreboard players set blue battlebox_game 0
scoreboard players set green battlebox_game 0
scoreboard players set yellow battlebox_game 0
scoreboard players reset @a battlebox_death

setblock -11 4 21 redstone_block

effect give @a minecraft:saturation 1 5 true
effect give @a minecraft:regeneration 1 9 true

execute as @a at @s run execute run playsound minecraft:blocknote_block.pling block @s ~ ~ ~ 2 1

#sets flag
scoreboard players set gameflag battlebox_game 1
scoreboard players set arena1 battlebox_game 1
scoreboard players set arena2 battlebox_game 1

#Assign Spawnpoints
execute if score gamecount battlebox_game matches 1 run spawnpoint @a[team=red] 20 17 -9 270
execute if score gamecount battlebox_game matches 1 run spawnpoint @a[team=blue] 20 17 34 90
execute if score gamecount battlebox_game matches 1 run spawnpoint @a[team=green] 66 17 34 90
execute if score gamecount battlebox_game matches 1 run spawnpoint @a[team=yellow] 66 17 -9 270

execute if score gamecount battlebox_game matches 2 run spawnpoint @a[team=red] 20 17 -9 270
execute if score gamecount battlebox_game matches 2 run spawnpoint @a[team=blue] 66 17 34 90
execute if score gamecount battlebox_game matches 2 run spawnpoint @a[team=green] 20 17 34 90
execute if score gamecount battlebox_game matches 2 run spawnpoint @a[team=yellow] 66 17 -9 270

execute if score gamecount battlebox_game matches 3 run spawnpoint @a[team=red] 20 17 -9 270
execute if score gamecount battlebox_game matches 3 run spawnpoint @a[team=yellow] 20 17 34 90
execute if score gamecount battlebox_game matches 3 run spawnpoint @a[team=blue] 66 17 34 90
execute if score gamecount battlebox_game matches 3 run spawnpoint @a[team=green] 66 17 -9 270

#setup scoreboard

scoreboard players set §0 battlebox_sb 0
scoreboard players set §1 battlebox_sb 1
scoreboard players set §2 battlebox_sb 2
scoreboard players set §3 battlebox_sb 3
scoreboard players set §4 battlebox_sb 4
scoreboard players set §5 battlebox_sb 5
scoreboard players set §6 battlebox_sb 6
scoreboard players set §7 battlebox_sb 7
scoreboard players set : battlebox_sb 8
scoreboard players set §9 battlebox_sb 9
scoreboard players set §a battlebox_sb 10

team modify placeholder_0 suffix " "
team modify placeholder_1 suffix ["",{"text":"蓝队: ","color":"blue"},{"text":"0"}]
team modify placeholder_2 suffix ["",{"text":"红队: ","color":"red"},{"text":"0"}]
team modify placeholder_3 suffix ["",{"text":"绿队: ","color":"green"},{"text":"0"}]
team modify placeholder_4 suffix ["",{"text":"黄队: ","color":"yellow"},{"text":"0"}]
team modify placeholder_5 suffix [{"text":"本回合积分","color":"gold","bold":true}]
team modify placeholder_6 suffix " "
#更多地图
execute if score gamecount battlebox_game matches 1 if score game1 bb_mapsel matches 1 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Plains","color":"white"}]
execute if score gamecount battlebox_game matches 1 if score game1 bb_mapsel matches 2 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Pyramid","color":"white"}]
execute if score gamecount battlebox_game matches 1 if score game1 bb_mapsel matches 3 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Mines","color":"white"}]
execute if score gamecount battlebox_game matches 1 if score game1 bb_mapsel matches 4 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Wither Factory","color":"white"}]
execute if score gamecount battlebox_game matches 1 if score game1 bb_mapsel matches 5 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Deserted City","color":"white"}]


execute if score gamecount battlebox_game matches 2 if score game2 bb_mapsel matches 1 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Plains","color":"white"}]
execute if score gamecount battlebox_game matches 2 if score game2 bb_mapsel matches 2 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Pyramid","color":"white"}]
execute if score gamecount battlebox_game matches 2 if score game2 bb_mapsel matches 3 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Mines","color":"white"}]
execute if score gamecount battlebox_game matches 2 if score game2 bb_mapsel matches 4 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Wither Factory","color":"white"}]
execute if score gamecount battlebox_game matches 2 if score game2 bb_mapsel matches 5 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Deserted City","color":"white"}]

execute if score gamecount battlebox_game matches 3 if score game3 bb_mapsel matches 1 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Plains","color":"white"}]
execute if score gamecount battlebox_game matches 3 if score game3 bb_mapsel matches 2 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Pyramid","color":"white"}]
execute if score gamecount battlebox_game matches 3 if score game3 bb_mapsel matches 3 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Mines","color":"white"}]
execute if score gamecount battlebox_game matches 3 if score game3 bb_mapsel matches 4 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Wither Factory","color":"white"}]
execute if score gamecount battlebox_game matches 3 if score game3 bb_mapsel matches 5 run team modify placeholder_7 suffix [{"text":"地图: ","color":"aqua"},{"text":"Deserted City","color":"white"}]
##解决加更多地图的问题？？
execute if score gamecount battlebox_game matches 1..1 run team modify placeholder_9 suffix ["",{"text":"回合: ","color":"green"},{"text":"1/3","color":"white"}]
execute if score gamecount battlebox_game matches 2..2 run team modify placeholder_9 suffix ["",{"text":"回合: ","color":"green"},{"text":"2/3","color":"white"}]
execute if score gamecount battlebox_game matches 3..3 run team modify placeholder_9 suffix ["",{"text":"回合: ","color":"green"},{"text":"3/3","color":"white"}]
team modify placeholder_11 suffix " "

#function time
schedule function battlebox:timeannounce/5 15s
schedule function battlebox:timeannounce/4 16s
schedule function battlebox:timeannounce/3 17s
schedule function battlebox:timeannounce/2 18s
schedule function battlebox:timeannounce/1 19s

schedule clear master:timer/timeleft/sec
schedule clear master:timer/starting/sec
function master:timer/selkit/battlebox
