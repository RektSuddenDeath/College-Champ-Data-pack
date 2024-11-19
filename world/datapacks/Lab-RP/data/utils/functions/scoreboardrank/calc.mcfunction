
forceload add 0 0
kill @e[type=marker,tag=sbrank.t]
summon marker 0 0 0 {Tags:["red","sbrank.t"],CustomName:'"§c红队        "'}
summon marker 0 0 0 {Tags:["blue","sbrank.t"],CustomName:'"§9蓝队        "'}
summon marker 0 0 0 {Tags:["green","sbrank.t"],CustomName:'"§a绿队        "'}
summon marker 0 0 0 {Tags:["yellow","sbrank.t"],CustomName:'"§e黄队        "'}
summon marker 0 0 0 {Tags:["cyan","sbrank.t"],CustomName:'"§3青队        "'}
summon marker 0 0 0 {Tags:["pink","sbrank.t"],CustomName:'"§d粉队        "'}
summon marker 0 0 0 {Tags:["orange","sbrank.t"],CustomName:'"§6橙队        "'}
summon marker 0 0 0 {Tags:["purple","sbrank.t"],CustomName:'"§5紫队        "'}

tellraw @a[tag=debug] "success 1"
# Copies scores from the universal storage
scoreboard players operation @e[tag=red,tag=sbrank.t,type=marker,limit=1] sbrank_target = red sbrank_target
scoreboard players operation @e[tag=blue,tag=sbrank.t,type=marker,limit=1] sbrank_target = blue sbrank_target
scoreboard players operation @e[tag=green,tag=sbrank.t,type=marker,limit=1] sbrank_target = green sbrank_target
scoreboard players operation @e[tag=yellow,tag=sbrank.t,type=marker,limit=1] sbrank_target = yellow sbrank_target
scoreboard players operation @e[tag=cyan,tag=sbrank.t,type=marker,limit=1] sbrank_target = cyan sbrank_target
scoreboard players operation @e[tag=pink,tag=sbrank.t,type=marker,limit=1] sbrank_target = pink sbrank_target
scoreboard players operation @e[tag=orange,tag=sbrank.t,type=marker,limit=1] sbrank_target = orange sbrank_target
scoreboard players operation @e[tag=purple,tag=sbrank.t,type=marker,limit=1] sbrank_target = purple sbrank_target

tellraw @a[tag=debug] "success 2"
# 递归生成排名，允许有重合，此次生成的排名是实际排名的10倍
scoreboard objectives remove sbrank_temp 
scoreboard objectives add sbrank_temp dummy "实时排名-临时空间"
execute as @e[type=marker,tag=sbrank.t] run scoreboard players operation @s sbrank_temp = @s sbrank_target
function utils:scoreboardrank/rankmaxinit

tellraw @a[tag=debug] "success 3"
# 以排名为目标再次递归，但是根据队伍顺序依次扣除-1..-8的量，以防止计分板重合
function utils:scoreboardrank/rankmininit

tellraw @a[tag=debug] "success 4"
# 到现在为止，各个Marker的sbrank_rank和sbrank_target分别是各队积分和不并列的排名。
# 接下来利用Dynamic Commands将8个Marker分别放入rank_1..8的suffix中
# append后的数值是由单引号包裹的JSON文本。

# I hate my life
scoreboard objectives remove rank_temp
scoreboard objectives add rank_temp dummy
execute store result storage temp_sbrank score_1 int 1 run scoreboard players operation pos1 rank_temp = @e[type=marker,tag=sbrank.t,scores={sbrank_rank=1},limit=1] sbrank_target
execute store result storage temp_sbrank score_2 int 1 run scoreboard players operation pos2 rank_temp = @e[type=marker,tag=sbrank.t,scores={sbrank_rank=2},limit=1] sbrank_target
execute store result storage temp_sbrank score_3 int 1 run scoreboard players operation pos3 rank_temp = @e[type=marker,tag=sbrank.t,scores={sbrank_rank=3},limit=1] sbrank_target
execute store result storage temp_sbrank score_4 int 1 run scoreboard players operation pos4 rank_temp = @e[type=marker,tag=sbrank.t,scores={sbrank_rank=4},limit=1] sbrank_target
execute store result storage temp_sbrank score_5 int 1 run scoreboard players operation pos5 rank_temp = @e[type=marker,tag=sbrank.t,scores={sbrank_rank=5},limit=1] sbrank_target
execute store result storage temp_sbrank score_6 int 1 run scoreboard players operation pos6 rank_temp = @e[type=marker,tag=sbrank.t,scores={sbrank_rank=6},limit=1] sbrank_target
execute store result storage temp_sbrank score_7 int 1 run scoreboard players operation pos7 rank_temp = @e[type=marker,tag=sbrank.t,scores={sbrank_rank=7},limit=1] sbrank_target
execute store result storage temp_sbrank score_8 int 1 run scoreboard players operation pos8 rank_temp = @e[type=marker,tag=sbrank.t,scores={sbrank_rank=8},limit=1] sbrank_target

execute as @e[tag=red,tag=sbrank.t,type=marker,limit=1] store result storage temp_sbrank red int 1 run scoreboard players operation red sbrank_rank = @s sbrank_rank
execute as @e[tag=blue,tag=sbrank.t,type=marker,limit=1] store result storage temp_sbrank blue int 1 run scoreboard players operation blue sbrank_rank = @s sbrank_rank
execute as @e[tag=green,tag=sbrank.t,type=marker,limit=1] store result storage temp_sbrank green int 1 run scoreboard players operation green sbrank_rank = @s sbrank_rank
execute as @e[tag=yellow,tag=sbrank.t,type=marker,limit=1] store result storage temp_sbrank yellow int 1 run scoreboard players operation yellow sbrank_rank = @s sbrank_rank
execute as @e[tag=cyan,tag=sbrank.t,type=marker,limit=1] store result storage temp_sbrank cyan int 1 run scoreboard players operation cyan sbrank_rank = @s sbrank_rank
execute as @e[tag=pink,tag=sbrank.t,type=marker,limit=1] store result storage temp_sbrank pink int 1 run scoreboard players operation pink sbrank_rank = @s sbrank_rank
execute as @e[tag=orange,tag=sbrank.t,type=marker,limit=1] store result storage temp_sbrank orange int 1 run scoreboard players operation orange sbrank_rank = @s sbrank_rank
execute as @e[tag=purple,tag=sbrank.t,type=marker,limit=1] store result storage temp_sbrank purple int 1 run scoreboard players operation purple sbrank_rank = @s sbrank_rank

# temp_sbrank:1 = "red"
function utils:scoreboardrank/macro_store_rank_teams with storage temp_sbrank
#
function utils:scoreboardrank/macro_apply_score with storage temp_sbrank

tellraw @a[tag=debug] "success 5"