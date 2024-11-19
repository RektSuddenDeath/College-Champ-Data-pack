
execute if score gamecount tourney_stats matches 1..2 run scoreboard players set multiplier1 tourney_stats 150
execute if score gamecount tourney_stats matches 1..2 run scoreboard players set multiplier2 tourney_stats 100

execute if score gamecount tourney_stats matches 3..4 run scoreboard players set multiplier1 tourney_stats 200
execute if score gamecount tourney_stats matches 3..4 run scoreboard players set multiplier2 tourney_stats 100

execute if score gamecount tourney_stats matches 5..6 run scoreboard players set multiplier1 tourney_stats 250
execute if score gamecount tourney_stats matches 5..6 run scoreboard players set multiplier2 tourney_stats 100

execute if score gamecount tourney_stats matches 7 run scoreboard players set multiplier1 tourney_stats 300
execute if score gamecount tourney_stats matches 7 run scoreboard players set multiplier2 tourney_stats 100


execute if score gamecount tourney_stats matches 1 run schedule function decisiondome:multiboard/1_5 70t
execute if score gamecount tourney_stats matches 3 run schedule function decisiondome:multiboard/2_0 70t 
execute if score gamecount tourney_stats matches 5 run schedule function decisiondome:multiboard/2_5 70t 
execute if score gamecount tourney_stats matches 7 run schedule function decisiondome:multiboard/3_0 70t

execute if score gamecount tourney_stats matches 1 run tellraw @a ["",{"text": "游戏倍率会在游戏结算时计入各队积分中，且不参与个人积分的计算。","bold": true,"color":"yellow"}]

execute if score modifiers_chaos_multi tourney_stats matches 1 run function decisiondome:elevatorjoke/chaos/multi_override
execute if score modifiers_chaos_multi tourney_stats matches 1 run return 1

title @a times 10 60 10
execute if score gamecount tourney_stats matches 1 run title @a title ["",{"text":"游戏倍率提升！","bold": true,"color":"gold"}]
execute if score gamecount tourney_stats matches 3 run title @a title ["",{"text":"游戏倍率提升！","bold": true,"color":"gold"}]
execute if score gamecount tourney_stats matches 5 run title @a title ["",{"text":"游戏倍率提升！","bold": true,"color":"gold"}]
execute if score gamecount tourney_stats matches 7 run title @a title ["",{"text":"游戏倍率提升！","bold": true,"color":"gold"}]

execute if score gamecount tourney_stats matches 1 run title @a subtitle ["",{"text":"1.5x","bold": true,"color":"aqua"}]
execute if score gamecount tourney_stats matches 3 run title @a subtitle ["",{"text":"2.0x","bold": true,"color":"aqua"}]
execute if score gamecount tourney_stats matches 5 run title @a subtitle ["",{"text":"2.5x","bold": true,"color":"aqua"}]
execute if score gamecount tourney_stats matches 7 run title @a subtitle ["",{"text":"3.0x","bold": true,"color":"aqua"}]

execute if score gamecount tourney_stats matches 1 run data modify storage master:event_status multi_uniform set value "1.5"
execute if score gamecount tourney_stats matches 3 run data modify storage master:event_status multi_uniform set value "2.0"
execute if score gamecount tourney_stats matches 5 run data modify storage master:event_status multi_uniform set value "2.5"
execute if score gamecount tourney_stats matches 7 run data modify storage master:event_status multi_uniform set value "3.0"


