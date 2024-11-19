
scoreboard players set RoundActive tourney_stats 0

scoreboard players set gameflag rsr_game 0
schedule clear master:timer/timeleft/sec
function utils:no_drop_stop
kill @e[type=fireball]
kill @e[type=area_effect_cloud,tag=fire]
kill @e[type=marker,tag=rsr_player_position_record]
# Runs Y-Level compare to select the rankings (Auto Complete)

tag @a[tag=alive] add survivor
scoreboard objectives add rsr_ylevel dummy
function rocketspleefrush:height
scoreboard objectives remove rsr_ylevel

#
# SFX
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2 1
stopsound @a voice
gamerule reducedDebugInfo false

# Top placements
scoreboard players add @a[scores={rsr_rank=1}] rsr_indvscore 160
scoreboard players add @a[scores={rsr_rank=2}] rsr_indvscore 120
scoreboard players add @a[scores={rsr_rank=3}] rsr_indvscore 100
scoreboard players add @a[scores={rsr_rank=4}] rsr_indvscore 80
scoreboard players add @a[scores={rsr_rank=5}] rsr_indvscore 60
scoreboard players add @a[scores={rsr_rank=6}] rsr_indvscore 50
scoreboard players add @a[scores={rsr_rank=7}] rsr_indvscore 40
scoreboard players add @a[scores={rsr_rank=8}] rsr_indvscore 30

scoreboard players add @a[scores={rsr_rank=1}] rsr_roundscore 160
scoreboard players add @a[scores={rsr_rank=2}] rsr_roundscore 120
scoreboard players add @a[scores={rsr_rank=3}] rsr_roundscore 100
scoreboard players add @a[scores={rsr_rank=4}] rsr_roundscore 80
scoreboard players add @a[scores={rsr_rank=5}] rsr_roundscore 60
scoreboard players add @a[scores={rsr_rank=6}] rsr_roundscore 50
scoreboard players add @a[scores={rsr_rank=7}] rsr_roundscore 40
scoreboard players add @a[scores={rsr_rank=8}] rsr_roundscore 30

tellraw @a[scores={rsr_rank=1}] ["[§6+160分§r] ","§b[§r牖§b] ","§b你本轮取得了",{"text": "第1名","color": "#E3E3E3"},"§b！"]
tellraw @a[scores={rsr_rank=2}] ["[§6+120分§r] ","§b[§r牖§b] ","§b你本轮取得了",{"text": "第2名","color": "#E3E3E3"},"§b！"]
tellraw @a[scores={rsr_rank=3}] ["[§6+100分§r] ","§b[§r牖§b] ","§b你本轮取得了",{"text": "第3名","color": "#E3E3E3"},"§b！"]
tellraw @a[scores={rsr_rank=4}] ["[§6+80分§r] ","§b[§r牖§b] ","§b你本轮取得了",{"text": "第4名","color": "#E3E3E3"},"§b！"]
tellraw @a[scores={rsr_rank=5}] ["[§6+60分§r] ","§b[§r牖§b] ","§b你本轮取得了",{"text": "第5名","color": "#E3E3E3"},"§b！"]
tellraw @a[scores={rsr_rank=6}] ["[§6+50分§r] ","§b[§r牖§b] ","§b你本轮取得了",{"text": "第6名","color": "#E3E3E3"},"§b！"]
tellraw @a[scores={rsr_rank=7}] ["[§6+40分§r] ","§b[§r牖§b] ","§b你本轮取得了",{"text": "第7名","color": "#E3E3E3"},"§b！"]
tellraw @a[scores={rsr_rank=8}] ["[§6+30分§r] ","§b[§r牖§b] ","§b你本轮取得了",{"text": "第8名","color": "#E3E3E3"},"§b！"]

execute as @a[scores={rsr_rank=1..8}] at @s run playsound minecraft:sound.majoracquire record @s
# Kill Count
execute as @a run scoreboard players operation @s rsr_gamekills += @s rsr_roundkills

# Recap
execute if score round rsr_game matches 1 run execute as @a[team=!spec] run scoreboard players operation @s rsr_recap_r1 = @s rsr_rank
execute if score round rsr_game matches 2 run execute as @a[team=!spec] run scoreboard players operation @s rsr_recap_r2 = @s rsr_rank
execute if score round rsr_game matches 3 run execute as @a[team=!spec] run scoreboard players operation @s rsr_recap_r3 = @s rsr_rank

# Announce winner and self stats
execute if entity @a[tag=survivor] run tellraw @a ["§b[§r牖§b] ",{"selector":"@a[tag=survivor]"},{"text": "§b是最后存活的玩家！"}]
execute unless entity @a[tag=survivor] run tellraw @a ["§b[§r牖§b] ","§b本轮无人生还！"]

execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局是第"},{"score":{"name": "@s","objective": "rsr_rank"},"color":"aqua"},{"text": "名。"}]
execute as @a[team=!spec] run tellraw @s ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局获得了"},{"score":{"name": "@s","objective": "rsr_roundscore"},"color":"gold"},{"text": "分。"}]

execute as @a[team=!spec] if score @s rsr_round_ally_kills matches 0 run tellraw @s  ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局淘汰了"},{"score":{"name": "@s","objective": "rsr_roundkills"},"color":"yellow","bold": true},{"text": "§e§l名对手"},"§f。"]
execute as @a[team=!spec] if score @s rsr_round_ally_kills matches 1.. run tellraw @s  ["[",{"text": "▶","color":"yellow"},"] ",{"text": "你本局淘汰了"},{"score":{"name": "@s","objective": "rsr_roundkills"},"color":"yellow","bold": true},{"text": "§e§l名对手"},"§f和",{"score":{"name": "@s","objective": "rsr_round_ally_kills"},"color":"yellow","bold": true},{"text": "§e§l名队友"},"§f。"]

tag @a remove survivor

# schedule function rocketspleefrush:disintegrate/instant 299t

title @a times 0 60 20
title @a title "§c§l回合结束！"

#worldborder center 0 0
#worldborder set 30000000

execute if score round rsr_game matches 1..2 run schedule function rocketspleefrush:nextround 15s
execute if score round rsr_game matches 1..2 run function master:timer/nextround/15s

# schedule function rocketspleefrush:disintegrate/instant 295t
execute if score round rsr_game matches 3 run function rocketspleefrush:gameend