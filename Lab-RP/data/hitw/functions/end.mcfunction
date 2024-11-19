
scoreboard players set RoundActive tourney_stats 0

function hitw:cleartext
schedule clear hitw:wall/timer
schedule clear hitw:adjusttime/difficulty
schedule clear hitw:adjusttime/speedincrease
schedule clear master:timer/timeleft/sec

scoreboard players set gameflag hitw_game 0
#scoreboard players add round hitw_game 1

scoreboard players add @a[scores={hitw_roundrank=1}] hitw_roundscore 100
scoreboard players add @a[scores={hitw_roundrank=2}] hitw_roundscore 75
scoreboard players add @a[scores={hitw_roundrank=3}] hitw_roundscore 50
scoreboard players add @a[scores={hitw_roundrank=4}] hitw_roundscore 25

tellraw @a[scores={hitw_roundrank=1}] ["",{"text": "["},{"text": "+100分","color":"gold"},{"text": "]"}," §b[§r輶§b] ","§b你本回合获得了第",{"text": "1","color": "#E3E3E3"},"§b名！"]
tellraw @a[scores={hitw_roundrank=2}] ["",{"text": "["},{"text": "+75分","color":"gold"},{"text": "]"}," §b[§r輶§b] ","§b你本回合获得了第",{"text": "2","color": "#E3E3E3"},"§b名！"]
tellraw @a[scores={hitw_roundrank=3}] ["",{"text": "["},{"text": "+50分","color":"gold"},{"text": "]"}," §b[§r輶§b] ","§b你本回合获得了第",{"text": "3","color": "#E3E3E3"},"§b名！"]
tellraw @a[scores={hitw_roundrank=4}] ["",{"text": "["},{"text": "+25分","color":"gold"},{"text": "]"}," §b[§r輶§b] ","§b你本回合获得了第",{"text": "4","color": "#E3E3E3"},"§b名！"]

execute as @a[scores={hitw_roundrank=1..4}] at @s run playsound sound.majoracquire record @s

execute as @a run scoreboard players operation @s hitw_indvscore += @s hitw_roundscore

# Recap
execute if score round hitw_game matches 1 as @a[team=!spec] run scoreboard players operation @s hitw_recap_r1 = @s hitw_roundrank
execute if score round hitw_game matches 2 as @a[team=!spec] run scoreboard players operation @s hitw_recap_r2 = @s hitw_roundrank
execute if score round hitw_game matches 3 as @a[team=!spec] run scoreboard players operation @s hitw_recap_r3 = @s hitw_roundrank

# Next Round or Game End
execute if score round hitw_game matches 3 run function hitw:gameend
execute if score round hitw_game matches 1..2 run title @a times 0 60 10
execute if score round hitw_game matches 1..2 run title @a title ["",{"text": "回合结束！","color":"red","bold": true}]
execute if score round hitw_game matches 1..2 run schedule function hitw:betweenrounds 10s
execute if score round hitw_game matches 1..2 run function master:timer/nextround/10s

# Stop Walls from moving
kill @e[type=marker,tag=wall_mover]
# FX
stopsound @a voice
execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2

# Round Result Summary
execute as @a[team=!spec] run tellraw @s ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "]"},{"text": " 你本回合为第"},{"score":{"name":"@s","objective": "hitw_roundrank"},"color":"yellow"},{"text": "名。"}]
execute as @a[team=!spec] run tellraw @s ["",{"text": "["},{"text": "▶","color":"yellow"},{"text": "]"},{"text": " 你本回合获得了"},{"score":{"name":"@s","objective": "hitw_roundscore"},"color":"yellow"},{"text": "分。"}]
execute as @a[team=!spec] run tellraw @s ["","[",{"text": "▶","color":"yellow"},"]"," §7你本轮躲避了",{"score":{"name": "@s","objective": "hitw_round_dodged"},"color": "aqua"},"§7面墙。"]

# Reset Player States
execute as @a run scoreboard players operation @s hitw_game_dodged += @s hitw_round_dodged
scoreboard players set @s hitw_round_dodged 0
scoreboard players set @a hitw_roundscore 0

tag @a remove hitw_alive

effect clear @a