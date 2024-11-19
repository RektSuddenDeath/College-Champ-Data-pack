
# 地图上方的XZ最低的角落，XZ再分别-20为起始点

# Outer Corners
execute positioned 61468 302 60422 run place template meltdown:map/melting ~20 ~ ~20
execute positioned 61468 302 60422 run place template meltdown:map/melting ~260 ~ ~20
execute positioned 61468 302 60422 run place template meltdown:map/melting ~20 ~ ~260
execute positioned 61468 302 60422 run place template meltdown:map/melting ~260 ~ ~260

# Map Change
scoreboard players add @a[team=!spec] meltdown_map_id 40
execute as @a[team=!spec] run function meltdown:get_map_init