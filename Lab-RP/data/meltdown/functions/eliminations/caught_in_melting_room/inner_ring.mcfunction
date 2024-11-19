
execute as @e[type=marker,tag=room_center_anchor,tag=inner_ring] at @s positioned ~-27 100 ~-27 run tag @a[dx=54,dy=180,dz=54,tag=meltdown_alive] add queue_eliminated
execute as @e[type=marker,tag=room_center_anchor,tag=inner_ring] at @s positioned ~-27 100 ~-27 run execute as @a[dx=54,dy=180,dz=54,tag=meltdown_alive] run tellraw @a ["",{"selector":"@s"},"被困于熔化的房间没能逃出。"]