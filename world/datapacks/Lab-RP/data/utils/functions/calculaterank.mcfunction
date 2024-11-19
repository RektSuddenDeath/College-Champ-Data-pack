
# mvprank, Sort, SortTarget分别是三个不同的计分板Objectives.
# mvprank 用于存储玩家排名
# Sort 缓存，没有什么实际意义
# SortTarget 要排序的计分板项目的镜像。不应该在原先计分板项目直接操作，否则无法在输出排名的同时输出

#取出最高分
scoreboard players set Marker Sort -2147483647
execute as @a[team=!spec] run scoreboard players operation Marker Sort > @s SortTarget

#发现最高分的玩家，将其排名存储并移除其分数。每个已排序者增加1步。
execute as @a[team=!spec] if score @s SortTarget = Marker Sort run scoreboard players operation @s mvprank = Step mvprank
execute as @a[team=!spec] if score @s SortTarget = Marker Sort run scoreboard players add Step mvprank 1
execute as @a[team=!spec] if score @s SortTarget = Marker Sort run scoreboard players set @s SortTarget -2147483647

# 如果没有全部玩家都已被排名，则递归。
# menu应该被替换为实际目录。
execute unless score Step mvprank > Total mvprank run function utils:calculaterank
