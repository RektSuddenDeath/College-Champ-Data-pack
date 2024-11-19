
# TeamSort, Sort, TeamSort分别是三个不同的计分板Objectives.
# TeamSort 用于存储玩家排名
# Sort 缓存，没有什么实际意义
# TeamSort 要排序的计分板项目的镜像。不应该在原先计分板项目直接操作，否则无法在输出排名的同时输出

#取出最高分
scoreboard players set Marker TeamSort -2147483647
execute as @e[type=area_effect_cloud,tag=teamsort] run scoreboard players operation Marker TeamSort > @s TeamSort

#发现最高分的玩家，将其排名存储并移除其分数。每个已排序者增加1步。
execute as @e[type=area_effect_cloud,tag=teamsort] if score @s TeamSort = Marker TeamSort run scoreboard players operation @s TeamRank = Step TeamSort
execute as @e[type=area_effect_cloud,tag=teamsort] if score @s TeamSort = Marker TeamSort run scoreboard players add Step TeamSort 1
execute as @e[type=area_effect_cloud,tag=teamsort] if score @s TeamSort = Marker TeamSort run scoreboard players set @s TeamSort -2147483648

execute unless entity @e[type=area_effect_cloud,tag=teamsort,scores={TeamSort=-2000000..}] run scoreboard players set Step TeamSort 9

# 如果没有全部玩家都已被排名，则递归。否则输出结果
execute if score Step TeamSort > Total TeamSort if score gamecount tourney_stats matches 0..6 run function utils:teamrank/announce
# Add suspense if it's final game
execute if score Step TeamSort > Total TeamSort if score gamecount tourney_stats matches 7 run function decisiondome:finalduel/decide
execute if score Step TeamSort > Total TeamSort if score gamecount tourney_stats matches 7 run function decisiondome:finalduel/suspense/1
execute if score Step TeamSort > Total TeamSort if score gamecount tourney_stats matches 7 run schedule function decisiondome:finalduel/suspense/2 15t
execute if score Step TeamSort > Total TeamSort if score gamecount tourney_stats matches 7 run schedule function decisiondome:finalduel/suspense/3 35t
execute if score Step TeamSort > Total TeamSort if score gamecount tourney_stats matches 7 run schedule function decisiondome:finalduel/suspense/4 55t
execute if score Step TeamSort > Total TeamSort if score gamecount tourney_stats matches 7 run schedule function utils:teamrank/announce 4s


execute unless score Step TeamSort > Total TeamSort run function utils:teamrank/calculaterank

