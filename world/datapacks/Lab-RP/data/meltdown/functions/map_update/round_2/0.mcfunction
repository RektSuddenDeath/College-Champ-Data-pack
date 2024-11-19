# Game Duration: 5:00
# 1:00 Four Corners begin melting (需要更新地图)
# 1:20 Capture Crates in Inner Corners are unlocked
# 2:00 Outer Ring begins melting, Inner Ring is accessible, Four Corners fully melted (需要更新地图)
# 2:30 Inner Corners begin Melting, Central Core is accessible, Outer Ring fully melted （需要更新地图）
# 3:00 Inner Ring Begin Melting （需要更新地图）
# 3:30 Central Core capture crates are available, Inner Corners fully melted, Central Core begin melting （需要更新地图）
# 4:00 Inner Ring fully Melted （需要更新地图）
# 4:45 Game Force Ends
# Room Meltdown Imminent alerts 25sec before fully melted, protective doors are fully closed 10sec before fully melted

# 地图上方的XZ最低的角落，XZ再分别-20为起始点

# 125-131号地图为锁定的状态0-6 132 - 171 号地图为地图一的状态0，172-211号地图为地图一的状态1，以此类推 132-411号地图为此地图的地图编号
# Outer Corners
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~20 ~ ~20
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~260 ~ ~20
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~20 ~ ~260
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~260 ~ ~260

# Outer Ring
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~80 ~ ~20
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~140 ~ ~20
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~200 ~ ~20

execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~20 ~ ~80
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~20 ~ ~140
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~20 ~ ~200

execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~80 ~ ~260
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~140 ~ ~260
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~200 ~ ~260

execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~260 ~ ~80
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~260 ~ ~140
execute positioned 60956 302 60422 run place template meltdown:map/open_normal ~260 ~ ~200

# Inner Corners
execute positioned 60956 302 60422 run place template meltdown:map/open_crate ~80 ~ ~80
execute positioned 60956 302 60422 run place template meltdown:map/open_crate ~200 ~ ~80
execute positioned 60956 302 60422 run place template meltdown:map/open_crate ~80 ~ ~200
execute positioned 60956 302 60422 run place template meltdown:map/open_crate ~200 ~ ~200

# Inner Ring
execute positioned 60956 302 60422 run place template meltdown:map/locked ~80 ~ ~140
execute positioned 60956 302 60422 run place template meltdown:map/locked ~140 ~ ~80
execute positioned 60956 302 60422 run place template meltdown:map/locked ~200 ~ ~140
execute positioned 60956 302 60422 run place template meltdown:map/locked ~140 ~ ~200

# Central Core
execute positioned 60956 302 60422 run place template meltdown:map/locked ~140 ~ ~140

# Outer Corner Tunnels incl. spawns
## Spawns
execute positioned 60956 302 60422 run fill ~ ~1 ~ ~340 ~1 ~19 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~ ~1 ~ ~19 ~1 ~340 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~331 ~1 ~331 ~20 ~1 ~312 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~331 ~1 ~331 ~312 ~1 ~20 white_concrete replace gray_concrete

## Tunnels
execute positioned 60956 302 60422 run fill ~72 ~1 ~20 ~79 ~1 ~71 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~20 ~1 ~72 ~71 ~1 ~79 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~252 ~1 ~20 ~259 ~1 ~71 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~260 ~1 ~72 ~311 ~1 ~79 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~72 ~1 ~260 ~79 ~1 ~311 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~20 ~1 ~252 ~71 ~1 ~259 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~252 ~1 ~260 ~259 ~1 ~311 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~260 ~1 ~252 ~311 ~1 ~259 white_concrete replace gray_concrete

# Outer Ring Tunnels
execute positioned 60956 302 60422 run fill ~132 ~1 ~20 ~139 ~1 ~71 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~80 ~1 ~72 ~131 ~1 ~79 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~192 ~1 ~20 ~199 ~1 ~71 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~200 ~1 ~72 ~251 ~1 ~79 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~72 ~1 ~80 ~79 ~1 ~151 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~20 ~1 ~132 ~71 ~1 ~139 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~72 ~1 ~200 ~79 ~1 ~251 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~20 ~1 ~192 ~71 ~1 ~199 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~192 ~1 ~260 ~199 ~1 ~311 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~200 ~1 ~252 ~251 ~1 ~259 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~132 ~1 ~260 ~139 ~1 ~311 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~80 ~1 ~252 ~131 ~1 ~259 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~252 ~1 ~200 ~259 ~1 ~251 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~260 ~1 ~192 ~311 ~1 ~199 white_concrete replace gray_concrete

execute positioned 60956 302 60422 run fill ~252 ~1 ~80 ~259 ~1 ~131 white_concrete replace gray_concrete
execute positioned 60956 302 60422 run fill ~260 ~1 ~132 ~311 ~1 ~139 white_concrete replace gray_concrete

# Inner Corner Tunnels
execute positioned 60956 302 60422 run fill ~80 ~1 ~132 ~131 ~1 ~139 gray_concrete replace white_concrete
execute positioned 60956 302 60422 run fill ~132 ~1 ~80 ~139 ~1 ~131 gray_concrete replace white_concrete

execute positioned 60956 302 60422 run fill ~80 ~1 ~192 ~131 ~1 ~199 gray_concrete replace white_concrete
execute positioned 60956 302 60422 run fill ~192 ~1 ~80 ~199 ~1 ~131 gray_concrete replace white_concrete

execute positioned 60956 302 60422 run fill ~200 ~1 ~132 ~251 ~1 ~139 gray_concrete replace white_concrete
execute positioned 60956 302 60422 run fill ~132 ~1 ~200 ~139 ~1 ~251 gray_concrete replace white_concrete

execute positioned 60956 302 60422 run fill ~200 ~1 ~192 ~251 ~1 ~199 gray_concrete replace white_concrete
execute positioned 60956 302 60422 run fill ~192 ~1 ~200 ~199 ~1 ~251 gray_concrete replace white_concrete

# Inner Ring Tunnels
execute positioned 60956 302 60422 run fill ~132 ~1 ~140 ~139 ~1 ~191 gray_concrete replace white_concrete
execute positioned 60956 302 60422 run fill ~140 ~1 ~132 ~191 ~1 ~139 gray_concrete replace white_concrete

execute positioned 60956 302 60422 run fill ~192 ~1 ~140 ~199 ~1 ~191 gray_concrete replace white_concrete
execute positioned 60956 302 60422 run fill ~140 ~1 ~192 ~191 ~1 ~199 gray_concrete replace white_concrete