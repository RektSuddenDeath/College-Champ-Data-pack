

function meltdown:room_melt/begin_selection/central_core

tellraw @a[team=spec] ["§c[§r鼱§c] ","§c§l房间熔化警报！ ","§e中心已开始熔化。"]
execute as @e[type=marker,tag=central_core_melt_point] at @s run tp @s ~ ~49 ~
execute as @e[type=marker,tag=central_core_melt_point] at @s run setblock ~ ~ ~ black_concrete

scoreboard players set central_core meltdown_room_melt_time 0
scoreboard players set central_core meltdown_melt_point_spread_chance 8
scoreboard players set central_core meltdown_melt_point_spread_time 100

execute if score round meltdown_game matches 1 as @e[type=marker,tag=room_center_anchor,tag=central_core,tag=meltdown_anchor_round_1] at @s positioned ~-27 100 ~-27 run tellraw @a[dx=54,dy=180,dz=54] ["§c[§r鼱§c] ","§c§l房间熔化警报！ §e房间已开始熔化。"]
execute if score round meltdown_game matches 1 as @e[type=marker,tag=room_center_anchor,tag=central_core,tag=meltdown_anchor_round_1] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54] at @s run playsound sound.meltdown.melt_begins record @s ~ ~ ~ 1

execute if score round meltdown_game matches 2 as @e[type=marker,tag=room_center_anchor,tag=central_core,tag=meltdown_anchor_round_2] at @s positioned ~-27 100 ~-27 run tellraw @a[dx=54,dy=180,dz=54] ["§c[§r鼱§c] ","§c§l房间熔化警报！ §e房间已开始熔化。"]
execute if score round meltdown_game matches 2 as @e[type=marker,tag=room_center_anchor,tag=central_core,tag=meltdown_anchor_round_2] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54] at @s run playsound sound.meltdown.melt_begins record @s ~ ~ ~ 1

execute if score round meltdown_game matches 3 as @e[type=marker,tag=room_center_anchor,tag=central_core,tag=meltdown_anchor_round_3] at @s positioned ~-27 100 ~-27 run tellraw @a[dx=54,dy=180,dz=54] ["§c[§r鼱§c] ","§c§l房间熔化警报！ §e房间已开始熔化。"]
execute if score round meltdown_game matches 3 as @e[type=marker,tag=room_center_anchor,tag=central_core,tag=meltdown_anchor_round_3] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54] at @s run playsound sound.meltdown.melt_begins record @s ~ ~ ~ 1
