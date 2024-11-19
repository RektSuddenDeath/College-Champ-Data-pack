
# 游戏核心
scoreboard objectives add pkw2_game dummy "PKW Game Core"
scoreboard players set RoundActive tourney_stats 0
scoreboard players set gameflag pkw2_game 0
scoreboard players set Overtime pkw2_game 0
# 玩家进度
scoreboard objectives add pkw2_main dummy "Main Path Progress"
scoreboard objectives add pkw2_bonus1 dummy "Bonus Path 1"
scoreboard objectives add pkw2_bonus2 dummy "Bonus Path 2"
scoreboard objectives add pkw2_bonus3 dummy "Bonus Path 3"
scoreboard objectives add pkw2_bonus4 dummy "Bonus Path 4"
scoreboard objectives add pkw2_bonus5 dummy "Bonus Path 5"
scoreboard objectives add pkw2_onGround dummy "Whether if on ground"
scoreboard objectives add pkw2_nearby_5 dummy "Nearby players in a 5b distance"
scoreboard objectives add pkw2_nearby_8 dummy "Nearby players in a 8b distance"

scoreboard objectives add pkw2_coordsX dummy "X"
#scoreboard objectives add pkw2_coordsY dummy "Y"
scoreboard objectives add pkw2_coordsZ dummy "Z"

scoreboard players set @a pkw2_main 0
scoreboard players set @a pkw2_bonus1 0
scoreboard players set @a pkw2_bonus2 0
scoreboard players set @a pkw2_bonus3 0
scoreboard players set @a pkw2_bonus4 0
scoreboard players set @a pkw2_bonus5 0
# 记录点
## 关卡种类（Main Path=1, Bonus Path=2, Final Path=3)
scoreboard objectives add pkw2_stagetype dummy "Player Stage Type"
scoreboard players set @a pkw2_stagetype 1
## 记录点数值（前5大关，7n+1到7n+3为额外关的记录点，7n+4到7n+7为主关的记录点。其中7n+7的记录点是在玩家达到下一个intersection时的点，
## 其他点的位置均与难度板一致
## 对于尾关，第36个记录点是EASY的，第37-39为MEDIUM的，第40-42为HARD的。
## 记录点的数值会被无条件覆盖。
scoreboard objectives add pkw2_cp dummy "Player Checkpoints"
scoreboard players set @a pkw2_cp 0

## Level Clear Amount
function pkw2:level_clear_amount_init

# Team Multi
scoreboard objectives add pkw2_multi dummy "Team Multipliers"
scoreboard players set red pkw2_multi 100
scoreboard players set blue pkw2_multi 100
scoreboard players set green pkw2_multi 100
scoreboard players set yellow pkw2_multi 100
scoreboard players set orange pkw2_multi 100
scoreboard players set cyan pkw2_multi 100
scoreboard players set pink pkw2_multi 100
scoreboard players set purple pkw2_multi 100
scoreboard players set 100 pkw2_multi 100
# 关卡生成机制
scoreboard objectives add pkw2_stagename dummy
scoreboard objectives add pkw2_titledelay dummy
scoreboard players set @a pkw2_titledelay 0
## TO BE DONE

# 展示的计分板
function pkw2:scoreboard/init

# Bossbar
## 占位符，推下去一行
bossbar remove pkw2_1
#bossbar add pkw2_1 ""
#bossbar set pkw2_1 color pink
#bossbar set pkw2_1 players @a
## 创建主行，展现关卡进度
function pkw2:bossbar/create

## TO BE DONE

# 关卡提示组件
## 6n+1 - 6n+3 为Bonus Path，6n+4-6n+6为主关，第31关为EASY,第32-34关为MEDIUM，第35-37关为HARD
scoreboard objectives add pkw2_stagenum dummy "Current Stage"
scoreboard players set @a pkw2_stagenum 0
# Play intro
schedule function pkw2:intro/1 2s
schedule function pkw2:intro/2 4s
schedule function pkw2:intro/3 6s
schedule function pkw2:intro/4 16s
schedule function pkw2:intro/5 26s
schedule function pkw2:intro/6 36s
schedule function pkw2:intro/7 46s
schedule function pkw2:intro/8 56s

# Begin Listener
function master:timer/starting/pkw2
function pkw2:beginlistener


# Cleanup
tag @a remove easyComplete
tag @a remove mediumComplete
tag @a remove hardComplete

# Game Time
time set 1000
gamerule doDaylightCycle false

# Game Score
scoreboard objectives add pkw2_gamescore dummy
scoreboard players set stone pkw2_gamescore 3
scoreboard players set bronze pkw2_gamescore 7
scoreboard players set silver pkw2_gamescore 16
scoreboard players set gold pkw2_gamescore 23
scoreboard players set bonus1 pkw2_gamescore 0
scoreboard players set bonus2 pkw2_gamescore 5
scoreboard players set bonus3 pkw2_gamescore 15
scoreboard players set bonus4 pkw2_gamescore 35
scoreboard players set bonus5 pkw2_gamescore 60
# Teleport
clear @a
effect clear @a
gamerule fallDamage false
difficulty peaceful
gamemode adventure @a[team=!spec]
gamemode spectator @a[team=spec]

item replace entity @a[team=green] armor.feet with leather_boots{Unbreakable:1,display:{color:6192150},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=red] armor.feet with leather_boots{Unbreakable:1,display:{color:11546150},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=blue] armor.feet with leather_boots{Unbreakable:1,display:{color:3949738},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=yellow] armor.feet with leather_boots{Unbreakable:1,display:{color:16701501},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1 
item replace entity @a[team=cyan] armor.feet with leather_boots{Unbreakable:1,display:{color:65514},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=orange] armor.feet with leather_boots{Unbreakable:1,display:{color:16760576},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=purple] armor.feet with leather_boots{Unbreakable:1,display:{color:9437439},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1
item replace entity @a[team=pink] armor.feet with leather_boots{Unbreakable:1,display:{color:16711927},Enchantments:[{id:"binding_curse",lvl:1},{id:"depth_strider",lvl:3},{id:"feather_falling",lvl:10}]} 1 

tp @a[team=red] -14995.5 99.00 -15042.5 -360 0
tp @a[team=blue] -14996.5 99.00 -15042.5 -360 0
tp @a[team=green] -14997.5 99.00 -15042.5 -360 0
tp @a[team=yellow] -14998.5 99.00 -15042.5 -360 0
tp @a[team=orange] -14999.5 99.00 -15042.5 -360 0
tp @a[team=pink] -15000.5 99.00 -15042.5 -360 0
tp @a[team=purple] -15001.5 99.00 -15042.5 -360 0
tp @a[team=cyan] -15002.5 99.00 -15042.5 -360 0
tp @a[team=spec] -15003.5 99.00 -15042.5 -360 0

# Checkpoint on
scoreboard objectives add pkw2_void dummy "Y Coordinate"
function pkw2:coords_calc
function pkw2:checkpoint/master

# Barrier
fill -14995 101 -15021 -15005 105 -15021 barrier


# Transcript
tellraw @a[tag=_transcript] ["  §bTranscript >> §6Active Game: §fPARKOUR_WARRIOR_2"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]

# Modifiers
execute if score modifiers_parkour_rush pkw2_game matches 1 run tellraw @a ["§b[§r坕§b] ",{"text": "Parkour Rush","color": "#E3E3E3"},"§b: 每个奖励关均有完成人数上限。"]