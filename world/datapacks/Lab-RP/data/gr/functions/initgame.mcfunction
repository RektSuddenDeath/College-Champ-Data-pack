
schedule clear decisiondome:player
# 创建游戏控件（不需要复位的）
scoreboard objectives add gr_game dummy
scoreboard players set gameflag gr_game 0
scoreboard players set completed gr_game 0
scoreboard players set overtime gr_game 0
scoreboard players set reducedScore gr_game 0
# 创建游戏控件（需要复位的）
## 当前位次，用于更新计分板
scoreboard objectives remove gr_currentpos
scoreboard objectives add gr_currentpos dummy
scoreboard players set red gr_currentpos 1
scoreboard players set blue gr_currentpos 2
scoreboard players set green gr_currentpos 3
scoreboard players set yellow gr_currentpos 4
scoreboard players set cyan gr_currentpos 5
scoreboard players set pink gr_currentpos 6
scoreboard players set orange gr_currentpos 7
scoreboard players set purple gr_currentpos 8

## 游戏积分
scoreboard objectives remove gr_teamscore
scoreboard objectives add gr_teamscore dummy "GRID RUNNERS SCORE"
scoreboard players set red gr_teamscore 0
scoreboard players set blue gr_teamscore 0
scoreboard players set green gr_teamscore 0
scoreboard players set yellow gr_teamscore 0
scoreboard players set cyan gr_teamscore 0
scoreboard players set pink gr_teamscore 0
scoreboard players set orange gr_teamscore 0
scoreboard players set purple gr_teamscore 0
## 完成房间数
scoreboard objectives remove gr_completeroom
scoreboard objectives add gr_completeroom dummy "GRID RUNNERS COMPLETED ROOMS"
scoreboard players set red gr_completeroom 0
scoreboard players set blue gr_completeroom 0
scoreboard players set green gr_completeroom 0
scoreboard players set yellow gr_completeroom 0
scoreboard players set cyan gr_completeroom 0
scoreboard players set pink gr_completeroom 0
scoreboard players set orange gr_completeroom 0
scoreboard players set purple gr_completeroom 0

scoreboard objectives add gr_currentroom dummy "GRID RUNNERS CURRENT ROOM"
scoreboard players set red gr_currentroom 0
scoreboard players set blue gr_currentroom 0
scoreboard players set green gr_currentroom 0
scoreboard players set yellow gr_currentroom 0
scoreboard players set cyan gr_currentroom 0
scoreboard players set pink gr_currentroom 0
scoreboard players set orange gr_currentroom 0
scoreboard players set purple gr_currentroom 0

scoreboard objectives add gr_roomtoenter dummy "GRID RUNNERS DIVIDER ROOM NO"
scoreboard players set red gr_roomtoenter 1
scoreboard players set blue gr_roomtoenter 1
scoreboard players set green gr_roomtoenter 1
scoreboard players set yellow gr_roomtoenter 1
scoreboard players set cyan gr_roomtoenter 1
scoreboard players set pink gr_roomtoenter 1
scoreboard players set orange gr_roomtoenter 1
scoreboard players set purple gr_roomtoenter 1

# 创建存储空间，用于更新数据
forceload add 15000 15000
kill @e[type=area_effect_cloud,tag=gr_posstorage]
scoreboard objectives remove gr_posstorage
scoreboard objectives remove gr_roomstorage
scoreboard objectives add gr_posstorage dummy "GRID RUNNERS POSITION STORAGE"
scoreboard objectives add gr_roomstorage dummy "GRID RUNNERS ROOMS STORAGE"
## 这将会创造8个区域效果云，分别具有1-8的分数
summon area_effect_cloud 15000 1 15000 {Duration:9999999,Tags:["gr_posstorage"]}
scoreboard players add @e[type=area_effect_cloud,tag=gr_posstorage] gr_posstorage 1
summon area_effect_cloud 15000 1 15000 {Duration:9999999,Tags:["gr_posstorage"]}
scoreboard players add @e[type=area_effect_cloud,tag=gr_posstorage] gr_posstorage 1
summon area_effect_cloud 15000 1 15000 {Duration:9999999,Tags:["gr_posstorage"]}
scoreboard players add @e[type=area_effect_cloud,tag=gr_posstorage] gr_posstorage 1
summon area_effect_cloud 15000 1 15000 {Duration:9999999,Tags:["gr_posstorage"]}
scoreboard players add @e[type=area_effect_cloud,tag=gr_posstorage] gr_posstorage 1
summon area_effect_cloud 15000 1 15000 {Duration:9999999,Tags:["gr_posstorage"]}
scoreboard players add @e[type=area_effect_cloud,tag=gr_posstorage] gr_posstorage 1
summon area_effect_cloud 15000 1 15000 {Duration:9999999,Tags:["gr_posstorage"]}
scoreboard players add @e[type=area_effect_cloud,tag=gr_posstorage] gr_posstorage 1
summon area_effect_cloud 15000 1 15000 {Duration:9999999,Tags:["gr_posstorage"]}
scoreboard players add @e[type=area_effect_cloud,tag=gr_posstorage] gr_posstorage 1
summon area_effect_cloud 15000 1 15000 {Duration:9999999,Tags:["gr_posstorage"]}
scoreboard players add @e[type=area_effect_cloud,tag=gr_posstorage] gr_posstorage 1
## 初始化房间数为0
scoreboard players set @e[type=area_effect_cloud,tag=gr_posstorage] gr_roomstorage 0
## Team storage for everything
kill @e[type=area_effect_cloud,tag=gr_general]
summon minecraft:area_effect_cloud 15000 100 15000 {Duration:999999999, Tags: ["gr_general","gr_redany"],CustomName:'"§c红队"'}
summon minecraft:area_effect_cloud 15000 100 15000 {Duration:999999999, Tags: ["gr_general","gr_blueany"],CustomName:'"§9蓝队"'}
summon minecraft:area_effect_cloud 15000 100 15000 {Duration:999999999, Tags: ["gr_general","gr_greenany"],CustomName:'"§2绿队"'}
summon minecraft:area_effect_cloud 15000 100 15000 {Duration:999999999, Tags: ["gr_general","gr_yellowany"],CustomName:'"§e黄队"'}
summon minecraft:area_effect_cloud 15000 100 15000 {Duration:999999999, Tags: ["gr_general","gr_cyanany"],CustomName:'"§3青队"'}
summon minecraft:area_effect_cloud 15000 100 15000 {Duration:999999999, Tags: ["gr_general","gr_orangeany"],CustomName:'"§6橙队"'}
summon minecraft:area_effect_cloud 15000 100 15000 {Duration:999999999, Tags: ["gr_general","gr_pinkany"],CustomName:'"§d粉队"'}
summon minecraft:area_effect_cloud 15000 100 15000 {Duration:999999999, Tags: ["gr_general","gr_purpleany"],CustomName:'"§5紫队"'}
### Init Scoreboard
function gr:scoreboard/init

## 各个房间的时间存储 未赋值为DNF
scoreboard objectives remove gr_coursetime
scoreboard objectives remove gr_room1time
scoreboard objectives remove gr_room2time
scoreboard objectives remove gr_room3time
scoreboard objectives remove gr_room4time
scoreboard objectives remove gr_room5time
scoreboard objectives remove gr_room6time
scoreboard objectives remove gr_room7time
scoreboard objectives remove gr_room8time

scoreboard objectives add gr_coursetime dummy "Grid Runners Course Time"
scoreboard objectives add gr_room1time dummy
scoreboard objectives add gr_room2time dummy
scoreboard objectives add gr_room3time dummy
scoreboard objectives add gr_room4time dummy
scoreboard objectives add gr_room5time dummy
scoreboard objectives add gr_room6time dummy
scoreboard objectives add gr_room7time dummy
scoreboard objectives add gr_room8time dummy
## 创建空间储存各个房间完成的队伍数，进行排名
scoreboard objectives add gr_indvroom dummy
scoreboard players set 1 gr_indvroom 0
scoreboard players set 2 gr_indvroom 0
scoreboard players set 3 gr_indvroom 0
scoreboard players set 4 gr_indvroom 0
scoreboard players set 5 gr_indvroom 0
scoreboard players set 6 gr_indvroom 0
scoreboard players set 7 gr_indvroom 0
scoreboard players set 8 gr_indvroom 0
scoreboard players set 9 gr_indvroom 0

scoreboard players set @e[type=area_effect_cloud,tag=gr_general] gr_coursetime 0
scoreboard players set @e[type=area_effect_cloud,tag=gr_general] gr_room1time 0
scoreboard players set @e[type=area_effect_cloud,tag=gr_general] gr_room2time 0
scoreboard players set @e[type=area_effect_cloud,tag=gr_general] gr_room3time 0
scoreboard players set @e[type=area_effect_cloud,tag=gr_general] gr_room4time 0
scoreboard players set @e[type=area_effect_cloud,tag=gr_general] gr_room5time 0
scoreboard players set @e[type=area_effect_cloud,tag=gr_general] gr_room6time 0
scoreboard players set @e[type=area_effect_cloud,tag=gr_general] gr_room7time 0
scoreboard players set @e[type=area_effect_cloud,tag=gr_general] gr_room8time 0
## 房间时间的临时存储空间
scoreboard objectives remove gr_currenttime
scoreboard objectives add gr_currenttime dummy

scoreboard objectives add gr_currentmin dummy
scoreboard objectives add gr_currentsec dummy
# 传送
function gr:inittp

# Wait 2 sec then play intro
schedule function gr:intro/1 2s
schedule function gr:intro/2 4s
schedule function gr:intro/3 6s
schedule function gr:intro/4 14s
schedule function gr:intro/5 22s
schedule function gr:intro/6 30s
schedule function gr:intro/7 38s
schedule function gr:intro/8 46s

# Start the timer detection, when timer hits 10s, play intro. Game will not be pauseable after this time mark
function gr:time/pregame

# Give Potion Effects
effect give @a resistance 1000000 6 true
effect give @a saturation 1000000 6 true
effect give @a night_vision 1000000 0 true
# Gamemode
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]
# Give Depth Strider Boots
item replace entity @a[team=!spec] armor.feet with iron_boots{Unbreakable:1b,Enchantments:[{id:"depth_strider",lvl:3},{id:"binding_curse",lvl:1}]} 1

# Init Game components 
## Team Phase (注解: 转移到下一个房间为奇数，正在进行一个房间的挑战为偶数，每次+1)
scoreboard objectives add gr_teamphase dummy "GRID RUNNERS INTERNAL PHASE"
scoreboard players set red gr_teamphase 1
scoreboard players set blue gr_teamphase 1
scoreboard players set green gr_teamphase 1
scoreboard players set yellow gr_teamphase 1
scoreboard players set cyan gr_teamphase 1
scoreboard players set orange gr_teamphase 1
scoreboard players set pink gr_teamphase 1
scoreboard players set purple gr_teamphase 1

## 生成第一个房间的Holograms
function gr:defanchors
function gr:rooms/1/red/divider
function gr:rooms/1/blue/divider
function gr:rooms/1/green/divider
function gr:rooms/1/yellow/divider
function gr:rooms/1/cyan/divider
function gr:rooms/1/orange/divider
function gr:rooms/1/pink/divider
function gr:rooms/1/purple/divider

## Cleanup
tag @a remove gr_stopmusic

tellraw @a[tag=_transcript] ["  §bTranscript >> §f§6Active Game: §fGRID_RUNNERS"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]