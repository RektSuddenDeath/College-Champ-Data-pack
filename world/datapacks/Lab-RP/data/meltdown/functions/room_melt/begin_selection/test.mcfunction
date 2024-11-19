
# This test should be taken on the Outer Ring.
function meltdown:room_melt/try_summon/test

execute as @e[type=marker,tag=starting_point,tag=outer_ring_melt_point] at @s run tp @s ~ ~-1 ~
execute as @e[type=marker,tag=starting_point,tag=outer_ring_melt_point] at @s run setblock ~ ~ ~ black_concrete

scoreboard players set outer_ring meltdown_room_melt_time 0
scoreboard players set outer_ring meltdown_melt_point_spread_chance 3
scoreboard players set outer_ring meltdown_melt_point_spread_time 100

tellraw @a ["[§c!§f] ","§c§l房间熔化警报！ §e外圈房间已开始熔化。"]
tellraw @s ["[§6DEBUG§f] ","OUTER_RING"," 已生成",{"score":{"name": "outer_ring","objective": "meltdown_begin_points"},"color": "gold"},"个起始熔化点。"]