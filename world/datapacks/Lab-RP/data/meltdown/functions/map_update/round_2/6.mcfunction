# Inner Ring Tunnels
execute positioned 60956 302 60422 run fill ~132 ~1 ~140 ~139 ~1 ~191 gray_concrete replace white_concrete
execute positioned 60956 302 60422 run fill ~140 ~1 ~132 ~191 ~1 ~139 gray_concrete replace white_concrete

execute positioned 60956 302 60422 run fill ~192 ~1 ~140 ~199 ~1 ~191 gray_concrete replace white_concrete
execute positioned 60956 302 60422 run fill ~140 ~1 ~192 ~191 ~1 ~199 gray_concrete replace white_concrete
# Inner Ring
execute positioned 60956 302 60422 run place template meltdown:map/melted ~80 ~ ~140
execute positioned 60956 302 60422 run place template meltdown:map/melted ~140 ~ ~80
execute positioned 60956 302 60422 run place template meltdown:map/melted ~200 ~ ~140
execute positioned 60956 302 60422 run place template meltdown:map/melted ~140 ~ ~200

# Map Change
scoreboard players add @a[team=!spec] meltdown_map_id 40
execute as @a[team=!spec] run function meltdown:get_map_init