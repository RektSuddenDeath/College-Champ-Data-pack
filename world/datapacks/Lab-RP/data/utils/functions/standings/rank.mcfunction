

#取出最高分
scoreboard players set Marker standingsCache -2147483647
execute as @e[type=area_effect_cloud,tag=standings] run scoreboard players operation Marker standingsCache > @s standingsCache

#发现最高分的玩家，将其排名存储并移除其分数。每个已排序者增加1步。
execute as @e[type=area_effect_cloud,tag=standings] if score @s standingsCache = Marker standingsCache run scoreboard players operation @s standingsRank = Step standingsCache
execute as @e[type=area_effect_cloud,tag=standings] if score @s standingsCache = Marker standingsCache run scoreboard players add Step standingsCache 1
execute as @e[type=area_effect_cloud,tag=standings] if score @s standingsCache = Marker standingsCache run scoreboard players set @s standingsCache -2147483647

execute unless entity @e[type=area_effect_cloud,tag=standings,scores={standingsCache=0..}] run scoreboard players set Step standingsCache 9

# 如果没有全部玩家都已被排名，则递归。否则输出结果
execute if score Step standingsCache > Total standingsCache if score ActiveGame tourney_stats matches 3 run function utils:standings/pushspec
execute if score Step standingsCache > Total standingsCache unless score ActiveGame tourney_stats matches 3 run function utils:standings/push
execute unless score Step standingsCache > Total standingsCache run function utils:standings/rank