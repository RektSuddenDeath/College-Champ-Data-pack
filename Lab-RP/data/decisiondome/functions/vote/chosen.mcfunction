

scoreboard players set phase tourney_stats 5
scoreboard objectives remove dd_vote
scoreboard objectives add dd_vote dummy
# Decides if the game is open for voting.
kill @e[type=area_effect_cloud,tag=dd]
execute unless score 1 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["1","dd"]}
execute unless score 2 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["2","dd"]}
execute unless score 3 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["3","dd"]}
execute unless score 4 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["4","dd"]}
execute unless score 5 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["5","dd"]}
execute unless score 6 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["6","dd"]}
execute unless score 7 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["7","dd"]}
execute unless score 8 tourney_games matches 0 run summon area_effect_cloud -10000 50 -10000 {Duration:99999,Tags:["8","dd"]}
# Counts chickens
function decisiondome:vote/countchicken
function decisiondome:vote/copyvote
# Start Ranking the votes
scoreboard players set maxvotes dd_vote -2147483648
execute as @e[type=area_effect_cloud,tag=dd] run scoreboard players operation maxvotes dd_vote > @s dd_vote
execute as @e[type=area_effect_cloud,tag=dd] if score @s dd_vote = maxvotes dd_vote run tag @s add topvote


kill @e[type=area_effect_cloud,tag=dd,tag=!topvote]
execute as @e[type=area_effect_cloud,tag=topvote] run scoreboard players add targets dd_vote 1

function decisiondome:vote/whiteout

# If there's only one choice, the game is chosen immediately.
# The following 8 are the first revealed games
execute if score targets dd_vote matches 1 run execute as @a at @s run playsound minecraft:sound.end record @s ~ ~ ~ 1.2
execute if score targets dd_vote matches 1 run title @a times 0 80 20
execute if score targets dd_vote matches 1 run title @a subtitle ["",{"text": "即将传送……","color":"gold"}]
execute if score targets dd_vote matches 1 run function master:timer/decisiondome/8s
execute if score targets dd_vote matches 1 run schedule function decisiondome:breakfloor 6s
execute if score targets dd_vote matches 1 run schedule function decisiondome:vote/cleanup 155t
execute if score targets dd_vote matches 1 run schedule clear decisiondome:player
execute if score targets dd_vote matches 1 run schedule clear decisiondome:vote/cycle
execute if score targets dd_vote matches 1 run function decisiondome:vote/displayvotes
execute if score targets dd_vote matches 1 run team modify placeholder_5 suffix ""
execute if score targets dd_vote matches 1 run team modify placeholder_5 prefix ["",{"text": "传送到游戏: ","bold": true,"color":"red"}]


execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=1] run function decisiondome:choosegame/sector/1
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=2] run function decisiondome:choosegame/sector/2
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=3] run function decisiondome:choosegame/sector/3
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=4] run function decisiondome:choosegame/sector/4
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=5] run function decisiondome:choosegame/sector/5
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=6] run function decisiondome:choosegame/sector/6
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=7] run function decisiondome:choosegame/sector/7
execute if score targets dd_vote matches 1 if entity @e[type=area_effect_cloud,tag=topvote,tag=8] run function decisiondome:choosegame/sector/8

# Tie Breaker
execute if score targets dd_vote matches 2.. run tellraw @a ["[",{"text": "Decision Dome","bold": true,"color":"gold"},"]: ","出现同票，即将选择一个随机的游戏……"]
execute if score targets dd_vote matches 2.. run schedule function decisiondome:vote/tiebreaker 2s
execute if score targets dd_vote matches 2.. as @a run execute at @s run playsound minecraft:entity.item.pickup player @s ~ ~ ~ 1.2

schedule clear decisiondome:vote/cycle
function utils:no_drop_stop
function decisiondome:vote/tiesector