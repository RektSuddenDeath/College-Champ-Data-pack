# Inner Corner Tunnels
execute positioned 61468 302 60422 run fill ~80 ~1 ~132 ~131 ~1 ~139 gray_concrete replace white_concrete
execute positioned 61468 302 60422 run fill ~132 ~1 ~80 ~139 ~1 ~131 gray_concrete replace white_concrete

execute positioned 61468 302 60422 run fill ~80 ~1 ~192 ~131 ~1 ~199 gray_concrete replace white_concrete
execute positioned 61468 302 60422 run fill ~192 ~1 ~80 ~199 ~1 ~131 gray_concrete replace white_concrete

execute positioned 61468 302 60422 run fill ~200 ~1 ~132 ~251 ~1 ~139 gray_concrete replace white_concrete
execute positioned 61468 302 60422 run fill ~132 ~1 ~200 ~139 ~1 ~251 gray_concrete replace white_concrete

execute positioned 61468 302 60422 run fill ~200 ~1 ~192 ~251 ~1 ~199 gray_concrete replace white_concrete
execute positioned 61468 302 60422 run fill ~192 ~1 ~200 ~199 ~1 ~251 gray_concrete replace white_concrete
# Inner Corners
execute positioned 61468 302 60422 run place template meltdown:map/melted ~80 ~ ~80
execute positioned 61468 302 60422 run place template meltdown:map/melted ~200 ~ ~80
execute positioned 61468 302 60422 run place template meltdown:map/melted ~80 ~ ~200
execute positioned 61468 302 60422 run place template meltdown:map/melted ~200 ~ ~200
# Central Core
execute positioned 61468 302 60422 run place template meltdown:map/melting ~140 ~ ~140

# Map Change
scoreboard players add @a[team=!spec] meltdown_map_id 40
execute as @a[team=!spec] run function meltdown:get_map_init