# Outer Corner Tunnels incl. spawns
## Spawns
execute positioned 60444 302 60422 run fill ~ ~1 ~ ~340 ~1 ~19 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~ ~1 ~ ~19 ~1 ~340 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~331 ~1 ~331 ~20 ~1 ~312 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~331 ~1 ~331 ~312 ~1 ~20 gray_concrete replace white_concrete

## Tunnels
execute positioned 60444 302 60422 run fill ~72 ~1 ~20 ~79 ~1 ~71 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~20 ~1 ~72 ~71 ~1 ~79 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~252 ~1 ~20 ~259 ~1 ~71 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~260 ~1 ~72 ~311 ~1 ~79 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~72 ~1 ~260 ~79 ~1 ~311 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~20 ~1 ~252 ~71 ~1 ~259 gray_concrete replace white_concrete

execute positioned 60444 302 60422 run fill ~252 ~1 ~260 ~259 ~1 ~311 gray_concrete replace white_concrete
execute positioned 60444 302 60422 run fill ~260 ~1 ~252 ~311 ~1 ~259 gray_concrete replace white_concrete

# Inner Corner Tunnels
execute positioned 60444 302 60422 run fill ~80 ~1 ~132 ~131 ~1 ~139 white_concrete replace gray_concrete
execute positioned 60444 302 60422 run fill ~132 ~1 ~80 ~139 ~1 ~131 white_concrete replace gray_concrete

execute positioned 60444 302 60422 run fill ~80 ~1 ~192 ~131 ~1 ~199 white_concrete replace gray_concrete
execute positioned 60444 302 60422 run fill ~192 ~1 ~80 ~199 ~1 ~131 white_concrete replace gray_concrete

execute positioned 60444 302 60422 run fill ~200 ~1 ~132 ~251 ~1 ~139 white_concrete replace gray_concrete
execute positioned 60444 302 60422 run fill ~132 ~1 ~200 ~139 ~1 ~251 white_concrete replace gray_concrete

execute positioned 60444 302 60422 run fill ~200 ~1 ~192 ~251 ~1 ~199 white_concrete replace gray_concrete
execute positioned 60444 302 60422 run fill ~192 ~1 ~200 ~199 ~1 ~251 white_concrete replace gray_concrete

# Outer Corners
execute positioned 60444 302 60422 run place template meltdown:map/melted ~20 ~ ~20
execute positioned 60444 302 60422 run place template meltdown:map/melted ~260 ~ ~20
execute positioned 60444 302 60422 run place template meltdown:map/melted ~20 ~ ~260
execute positioned 60444 302 60422 run place template meltdown:map/melted ~260 ~ ~260

# Inner Ring
execute positioned 60444 302 60422 run place template meltdown:map/open_normal ~80 ~ ~140
execute positioned 60444 302 60422 run place template meltdown:map/open_normal ~140 ~ ~80
execute positioned 60444 302 60422 run place template meltdown:map/open_normal ~200 ~ ~140
execute positioned 60444 302 60422 run place template meltdown:map/open_normal ~140 ~ ~200
# Outer Ring
execute positioned 60444 302 60422 run place template meltdown:map/melting ~80 ~ ~20
execute positioned 60444 302 60422 run place template meltdown:map/melting ~140 ~ ~20
execute positioned 60444 302 60422 run place template meltdown:map/melting ~200 ~ ~20

execute positioned 60444 302 60422 run place template meltdown:map/melting ~20 ~ ~80
execute positioned 60444 302 60422 run place template meltdown:map/melting ~20 ~ ~140
execute positioned 60444 302 60422 run place template meltdown:map/melting ~20 ~ ~200

execute positioned 60444 302 60422 run place template meltdown:map/melting ~80 ~ ~260
execute positioned 60444 302 60422 run place template meltdown:map/melting ~140 ~ ~260
execute positioned 60444 302 60422 run place template meltdown:map/melting ~200 ~ ~260

execute positioned 60444 302 60422 run place template meltdown:map/melting ~260 ~ ~80
execute positioned 60444 302 60422 run place template meltdown:map/melting ~260 ~ ~140
execute positioned 60444 302 60422 run place template meltdown:map/melting ~260 ~ ~200

# Map Change
scoreboard players add @a[team=!spec] meltdown_map_id 40
execute as @a[team=!spec] run function meltdown:get_map_init