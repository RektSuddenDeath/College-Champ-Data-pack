
give @a[team=!spec] egg{vote:1}
effect give @a water_breathing 60 0 true
title @a times 0 40 20
title @a subtitle ""
title @a title ["",{"text": "开始投票吧！","color":"green"}]

team modify placeholder_5 suffix ""
team modify placeholder_5 prefix ["",{"text": "投票结束: ","bold": true,"color":"red"}]

scoreboard players set phase tourney_stats 3

scoreboard objectives remove dd_egg
scoreboard objectives add dd_egg dummy
function decisiondome:vote/egginit
function master:timer/decisiondome/25s
function decisiondome:vote/initcycle

kill @e[type=area_effect_cloud,tag=ddtools]
scoreboard players set @a dd_toolused 0
function decisiondome:tools/init

playsound minecraft:block.note_block.pling block @a 0 0 0 1000000

tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event State: §7PREPARING_VOTE §f-> VOTING"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]
# Remix Component

execute if score remix_mode tourney_stats matches 1 run function decisiondome:vote/remix_begin/1
execute if score remix_mode tourney_stats matches 2 run function decisiondome:vote/remix_begin/2
execute if score remix_mode tourney_stats matches 3 run function decisiondome:vote/remix_begin/3
execute if score remix_mode tourney_stats matches 4 run function decisiondome:vote/remix_begin/4
execute if score remix_mode tourney_stats matches 5 run function decisiondome:vote/remix_begin/5
execute if score remix_mode tourney_stats matches 6 run function decisiondome:vote/remix_begin/6
execute if score remix_mode tourney_stats matches 7 run function decisiondome:vote/remix_begin/7

scoreboard players set dome_chickens tourney_stats 0
execute if score remix_mode tourney_stats matches 1.. run function decisiondome:vote/chicken_limiter

# Chicken Duplication
scoreboard objectives remove dd_egg_dupe
scoreboard objectives add dd_egg_dupe dummy

# Chaos Override
execute if score gamecount tourney_stats matches 0 if score modifiers_chaos_multi tourney_stats matches 1 run function decisiondome:modifiers/force_segment_1