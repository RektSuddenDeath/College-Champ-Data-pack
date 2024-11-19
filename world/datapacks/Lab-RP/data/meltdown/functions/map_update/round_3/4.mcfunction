# Inner Ring
execute positioned 61468 302 60422 run place template meltdown:map/melting ~80 ~ ~140
execute positioned 61468 302 60422 run place template meltdown:map/melting ~140 ~ ~80
execute positioned 61468 302 60422 run place template meltdown:map/melting ~200 ~ ~140
execute positioned 61468 302 60422 run place template meltdown:map/melting ~140 ~ ~200

# Map Change
scoreboard players add @a[team=!spec] meltdown_map_id 40
execute as @a[team=!spec] run function meltdown:get_map_init