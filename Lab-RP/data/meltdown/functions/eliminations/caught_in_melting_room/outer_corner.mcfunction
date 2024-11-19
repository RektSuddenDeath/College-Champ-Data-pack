
execute as @e[type=marker,tag=room_center_anchor,tag=outer_corner] at @s positioned ~-27 100 ~-27 run tag @a[dx=54,dy=180,dz=54,tag=meltdown_alive] add queue_eliminated
execute as @e[type=marker,tag=room_center_anchor,tag=outer_corner] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54,tag=meltdown_alive] run tellraw @a ["",{"selector":"@s"},"被困于熔化的房间没能逃出。"]

execute as @e[type=marker,tag=room_center_anchor,tag=spawn_north] at @s positioned ~-6 100 ~-13 run tag @a[dx=13,dy=180,dz=28,tag=meltdown_alive] add queue_eliminated
execute as @e[type=marker,tag=room_center_anchor,tag=spawn_north] at @s positioned ~-6 100 ~-13 run execute as @a[dx=13,dy=180,dz=28,tag=meltdown_alive] run tellraw @a ["",{"selector":"@s"},"被困于熔化的房间没能逃出。"]

execute as @e[type=marker,tag=room_center_anchor,tag=spawn_east] at @s positioned ~-13 100 ~-6 run tag @a[dx=28,dy=180,dz=13,tag=meltdown_alive] add queue_eliminated
execute as @e[type=marker,tag=room_center_anchor,tag=spawn_east] at @s positioned ~-13 100 ~-6 run execute as @a[dx=28,dy=180,dz=13,tag=meltdown_alive] run tellraw @a ["",{"selector":"@s"},"被困于熔化的房间没能逃出。"]