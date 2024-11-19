
kill @e[type=fox]
#clear @a
scoreboard players set cyclespeed tourney_stats 15
scoreboard players set cyclecount tourney_stats 1

# 加载小道具序列
function decisiondome:tools/distribute/setsequence
# 禁止丢弃物品：
function utils:nodropping
# 
function decisiondome:tp


#
execute as @a at @s run playsound minecraft:music.decisiondome voice @s ~ ~ ~ 1
scoreboard players set phase tourney_stats 2

kill @e[type=area_effect_cloud,tag=voteaec]





#

team modify placeholder_5 suffix ""
team modify placeholder_5 prefix ["",{"text": "投票开始: ","bold": true,"color":"red"}]

function decisiondome:disablegame


# Normal Config

# # Timer Select

# execute unless score gamecount tourney_stats matches 5 run function master:timer/decisiondome/20s
# execute if score gamecount tourney_stats matches 5 run function master:timer/decisiondome/35s

# execute unless score gamecount tourney_stats matches 7 unless score gamecount tourney_stats matches 5 unless score gamecount tourney_stats matches 3 unless score gamecount tourney_stats matches 1 unless score gamecount tourney_stats matches 0 run schedule function decisiondome:tools/distribute/decide/init 2s

# execute unless score gamecount tourney_stats matches 5 run schedule function decisiondome:multiplier 1s

# execute if score gamecount tourney_stats matches 1 run schedule function decisiondome:tools/distribute/decide/init 5s
# execute if score gamecount tourney_stats matches 3 run schedule function decisiondome:tools/distribute/decide/init 5s
# execute if score gamecount tourney_stats matches 7 run schedule function decisiondome:tools/distribute/decide/init 5s

# # ## Add a game on Round 6.
# # execute if score gamecount tourney_stats matches 5 run schedule function decisiondome:vote/newgame 1s
# # execute if score gamecount tourney_stats matches 5 run schedule function decisiondome:game_addition/selectgrid 4s
# # execute if score gamecount tourney_stats matches 5 run schedule function decisiondome:game_addition/announce 6s
# # execute if score gamecount tourney_stats matches 5 run schedule function decisiondome:multiplier 10s
# execute if score gamecount tourney_stats matches 5 run schedule function decisiondome:tools/distribute/decide/init 15s

# Rising Config:
## Add a game on Round 2-7
# execute if score gamecount tourney_stats matches 1..6 run schedule function decisiondome:vote/newgame 1s
# execute if score gamecount tourney_stats matches 1..6 run schedule function decisiondome:game_addition/selectgrid 4s
# execute if score gamecount tourney_stats matches 1..6 run schedule function decisiondome:game_addition/announce 6s

# execute if score gamecount tourney_stats matches 1..6 run schedule function decisiondome:multiplier 10s
# execute if score gamecount tourney_stats matches 7.. run schedule function decisiondome:multiplier 1s

# execute if score gamecount tourney_stats matches 1..6 run schedule function decisiondome:tools/distribute/decide/init 15s
# execute if score gamecount tourney_stats matches 7.. run schedule function decisiondome:tools/distribute/decide/init 5s

# execute if score gamecount tourney_stats matches 1..6 run function master:timer/decisiondome/35s
# execute if score gamecount tourney_stats matches 7.. run function master:timer/decisiondome/20s



# Chaos Config:

function master:timer/decisiondome/20s

schedule function decisiondome:multiplier 1s

schedule function decisiondome:tools/distribute/decide/init 5s





tellraw @a[tag=_transcript] ["  §bTranscript >> §6Event state: §7LOBBY§f -> PREPARING_VOTE"," §7[",{"score":{"name": "hour","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "minute_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "minute","objective": "_transcript"},"color": "gray"},"§7:",{"score":{"name": "second_padding","objective": "_transcript"},"color": "gray"},{"score":{"name": "second","objective": "_transcript"},"color": "gray"},"§7]"]


# 第11届的Remix overrides
#execute if score remix_mode tourney_stats matches 1.. run function decisiondome:vote/remix_override_init

# Chaos Tp, Prevent Conflict
scoreboard players set @a chaos_control_tp_delay -9999