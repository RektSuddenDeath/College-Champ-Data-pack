
# BP Phase:
# 1: 两个队伍各选一个代表
# 2: 转场演出
# 3: 说明规则
# 4: BP

# Clear scb
schedule clear master:timer/decisiondome/sec
scoreboard objectives setdisplay sidebar

time set night
## 这部分会使得区域转为正确的颜色。

scoreboard objectives add megabolt_bp dummy
scoreboard players set phase megabolt_bp 1
scoreboard players set timer megabolt_bp 0
scoreboard objectives remove megabolt_team_podium
scoreboard objectives add megabolt_team_podium dummy

## Arena Coloring

### Podium Decide
scoreboard players operation duelist_1 megabolt_team_podium = TeamOne db_teams
scoreboard players operation duelist_2 megabolt_team_podium = TeamTwo db_teams

### Pick the Remaining podiums.
scoreboard players set teams_scattered megabolt_team_podium 0
scoreboard players set team_trying megabolt_team_podium 0
function dodgebolt:megabolt_bp/podium_step
function dodgebolt:megabolt_bp/podium_step
function dodgebolt:megabolt_bp/podium_step
function dodgebolt:megabolt_bp/podium_step
function dodgebolt:megabolt_bp/podium_step
function dodgebolt:megabolt_bp/podium_step
function dodgebolt:megabolt_bp/podium_step
function dodgebolt:megabolt_bp/podium_step


### Final Duelist Podiums
execute if score TeamOne db_teams matches 1 run fill 17002 114 16998 17028 101 17010 red_concrete replace white_concrete
execute if score TeamOne db_teams matches 1 run fill 17002 114 16998 17028 101 17010 red_concrete_powder replace white_concrete_powder
execute if score TeamOne db_teams matches 2 run fill 17002 114 16998 17028 101 17010 blue_concrete replace white_concrete
execute if score TeamOne db_teams matches 2 run fill 17002 114 16998 17028 101 17010 blue_concrete_powder replace white_concrete_powder
execute if score TeamOne db_teams matches 3 run fill 17002 114 16998 17028 101 17010 green_concrete replace white_concrete
execute if score TeamOne db_teams matches 3 run fill 17002 114 16998 17028 101 17010 green_concrete_powder replace white_concrete_powder
execute if score TeamOne db_teams matches 4 run fill 17002 114 16998 17028 101 17010 yellow_concrete replace white_concrete
execute if score TeamOne db_teams matches 4 run fill 17002 114 16998 17028 101 17010 yellow_concrete_powder replace white_concrete_powder
execute if score TeamOne db_teams matches 5 run fill 17002 114 16998 17028 101 17010 cyan_concrete replace white_concrete
execute if score TeamOne db_teams matches 5 run fill 17002 114 16998 17028 101 17010 cyan_concrete_powder replace white_concrete_powder
execute if score TeamOne db_teams matches 8 run fill 17002 114 16998 17028 101 17010 pink_concrete replace white_concrete
execute if score TeamOne db_teams matches 8 run fill 17002 114 16998 17028 101 17010 pink_concrete_powder replace white_concrete_powder
execute if score TeamOne db_teams matches 6 run fill 17002 114 16998 17028 101 17010 orange_concrete replace white_concrete
execute if score TeamOne db_teams matches 6 run fill 17002 114 16998 17028 101 17010 orange_concrete_powder replace white_concrete_powder
execute if score TeamOne db_teams matches 7 run fill 17002 114 16998 17028 101 17010 purple_concrete replace white_concrete
execute if score TeamOne db_teams matches 7 run fill 17002 114 16998 17028 101 17010 purple_concrete_powder replace white_concrete_powder


execute if score TeamTwo db_teams matches 1 run fill 16998 114 16998 16972 101 17010 red_concrete replace white_concrete
execute if score TeamTwo db_teams matches 1 run fill 16998 114 16998 16972 101 17010 red_concrete_powder replace white_concrete_powder
execute if score TeamTwo db_teams matches 2 run fill 16998 114 16998 16972 101 17010 blue_concrete replace white_concrete
execute if score TeamTwo db_teams matches 2 run fill 16998 114 16998 16972 101 17010 blue_concrete_powder replace white_concrete_powder
execute if score TeamTwo db_teams matches 3 run fill 16998 114 16998 16972 101 17010 green_concrete replace white_concrete
execute if score TeamTwo db_teams matches 3 run fill 16998 114 16998 16972 101 17010 green_concrete_powder replace white_concrete_powder
execute if score TeamTwo db_teams matches 4 run fill 16998 114 16998 16972 101 17010 yellow_concrete replace white_concrete
execute if score TeamTwo db_teams matches 4 run fill 16998 114 16998 16972 101 17010 yellow_concrete_powder replace white_concrete_powder
execute if score TeamTwo db_teams matches 5 run fill 16998 114 16998 16972 101 17010 cyan_concrete replace white_concrete
execute if score TeamTwo db_teams matches 5 run fill 16998 114 16998 16972 101 17010 cyan_concrete_powder replace white_concrete_powder
execute if score TeamTwo db_teams matches 8 run fill 16998 114 16998 16972 101 17010 pink_concrete replace white_concrete
execute if score TeamTwo db_teams matches 8 run fill 16998 114 16998 16972 101 17010 pink_concrete_powder replace white_concrete_powder
execute if score TeamTwo db_teams matches 6 run fill 16998 114 16998 16972 101 17010 orange_concrete replace white_concrete
execute if score TeamTwo db_teams matches 6 run fill 16998 114 16998 16972 101 17010 orange_concrete_powder replace white_concrete_powder
execute if score TeamTwo db_teams matches 7 run fill 16998 114 16998 16972 101 17010 purple_concrete replace white_concrete
execute if score TeamTwo db_teams matches 7 run fill 16998 114 16998 16972 101 17010 purple_concrete_powder replace white_concrete_powder

### Pick From Podium.
function dodgebolt:megabolt_bp/podium_coloring/picks_init

## Mega Settings
scoreboard players set mega_mode db_game 1

tag @a remove db_teamone
tag @a remove db_teamtwo

execute if score TeamOne db_teams matches 1 run tag @a[team=red] add db_teamone
execute if score TeamOne db_teams matches 2 run tag @a[team=blue] add db_teamone
execute if score TeamOne db_teams matches 3 run tag @a[team=green] add db_teamone
execute if score TeamOne db_teams matches 4 run tag @a[team=yellow] add db_teamone
execute if score TeamOne db_teams matches 5 run tag @a[team=cyan] add db_teamone
execute if score TeamOne db_teams matches 6 run tag @a[team=orange] add db_teamone
execute if score TeamOne db_teams matches 7 run tag @a[team=purple] add db_teamone
execute if score TeamOne db_teams matches 8 run tag @a[team=pink] add db_teamone

execute if score TeamTwo db_teams matches 1 run tag @a[team=red] add db_teamtwo
execute if score TeamTwo db_teams matches 2 run tag @a[team=blue] add db_teamtwo
execute if score TeamTwo db_teams matches 3 run tag @a[team=green] add db_teamtwo
execute if score TeamTwo db_teams matches 4 run tag @a[team=yellow] add db_teamtwo
execute if score TeamTwo db_teams matches 5 run tag @a[team=cyan] add db_teamtwo
execute if score TeamTwo db_teams matches 6 run tag @a[team=orange] add db_teamtwo
execute if score TeamTwo db_teams matches 7 run tag @a[team=purple] add db_teamtwo
execute if score TeamTwo db_teams matches 8 run tag @a[team=pink] add db_teamtwo


## Visuals


## Global
tellraw @a ["\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n\n"]
effect clear @a

### Non-Participating Teams
effect give @a[team=spec,tag=!admin] blindness infinite 0 true
effect give @a[team=!spec,tag=!db_teamone,tag=!db_teamtwo] blindness infinite 0 true

### Participating
effect give @a[tag=db_teamone] slowness 4 11 true
effect give @a[tag=db_teamtwo] slowness 4 11 true

execute as @a[tag=db_teamone] at @s run playsound sound.generalshrinkwarn record @s
execute as @a[tag=db_teamtwo] at @s run playsound sound.generalshrinkwarn record @s

tellraw @a[tag=db_teamone] ["§6[§r瀞§6] 请选择一名代表走上前方的§5紫色平台§6。"]
tellraw @a[tag=db_teamtwo] ["§6[§r瀞§6] 请选择一名代表走上前方的§5紫色平台§6。"]

## Begin phase functions
function dodgebolt:megabolt_bp/phases/init/1

## Global Loop
function dodgebolt:megabolt_bp/global_loop