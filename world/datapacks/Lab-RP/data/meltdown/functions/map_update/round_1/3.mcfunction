execute positioned 60444 302 60422 run fill ~132 ~1 ~20 ~139 ~1 ~71 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~80 ~1 ~72 ~131 ~1 ~79 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~192 ~1 ~20 ~199 ~1 ~71 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~200 ~1 ~72 ~251 ~1 ~79 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~72 ~1 ~80 ~79 ~1 ~151 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~20 ~1 ~132 ~71 ~1 ~139 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~72 ~1 ~200 ~79 ~1 ~251 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~20 ~1 ~192 ~71 ~1 ~199 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~192 ~1 ~260 ~199 ~1 ~311 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~200 ~1 ~252 ~251 ~1 ~259 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~132 ~1 ~260 ~139 ~1 ~311 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~80 ~1 ~252 ~131 ~1 ~259 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~252 ~1 ~200 ~259 ~1 ~251 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~260 ~1 ~192 ~311 ~1 ~199 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~252 ~1 ~80 ~259 ~1 ~131 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~260 ~1 ~132 ~311 ~1 ~139 gray_concrete replace white_concrete
# Inner Ring Tunnels
execute positioned 60444 302 60422 run fill ~132 ~1 ~140 ~139 ~1 ~191 white_concrete replace gray_concrete
execute positioned 60444 302 60422 run fill ~140 ~1 ~132 ~191 ~1 ~139 white_concrete replace gray_concrete

execute positioned 60444 302 60422 run fill ~192 ~1 ~140 ~199 ~1 ~191 white_concrete replace gray_concrete
execute positioned 60444 302 60422 run fill ~140 ~1 ~192 ~191 ~1 ~199 white_concrete replace gray_concrete
# Inner Corners
execute positioned 60444 302 60422 run place template meltdown:map/melting ~80 ~ ~80
execute positioned 60444 302 60422 run place template meltdown:map/melting ~200 ~ ~80
execute positioned 60444 302 60422 run place template meltdown:map/melting ~80 ~ ~200
execute positioned 60444 302 60422 run place template meltdown:map/melting ~200 ~ ~200
# Central Core
execute positioned 60444 302 60422 run place template meltdown:map/open_crate ~140 ~ ~140

execute positioned 60444 302 60422 run place template meltdown:map/melted ~80 ~ ~20
execute positioned 60444 302 60422 run place template meltdown:map/melted ~140 ~ ~20
execute positioned 60444 302 60422 run place template meltdown:map/melted ~200 ~ ~20

execute positioned 60444 302 60422 run place template meltdown:map/melted ~20 ~ ~80
execute positioned 60444 302 60422 run place template meltdown:map/melted ~20 ~ ~140
execute positioned 60444 302 60422 run place template meltdown:map/melted ~20 ~ ~200

execute positioned 60444 302 60422 run place template meltdown:map/melted ~80 ~ ~260
execute positioned 60444 302 60422 run place template meltdown:map/melted ~140 ~ ~260
execute positioned 60444 302 60422 run place template meltdown:map/melted ~200 ~ ~260

execute positioned 60444 302 60422 run place template meltdown:map/melted ~260 ~ ~80
execute positioned 60444 302 60422 run place template meltdown:map/melted ~260 ~ ~140
execute positioned 60444 302 60422 run place template meltdown:map/melted ~260 ~ ~200

# Map Change
scoreboard players add @a[team=!spec] meltdown_map_id 40
execute as @a[team=!spec] run function meltdown:get_map_init