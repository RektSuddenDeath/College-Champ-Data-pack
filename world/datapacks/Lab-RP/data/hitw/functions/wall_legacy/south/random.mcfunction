
# Generates a number according to the current game time
execute if score minute master.timer matches 2..3 run scoreboard players operation wall hitw_wall = @e[type=area_effect_cloud,tag=A,sort=random] random
execute if score minute master.timer matches 1 run scoreboard players operation wall hitw_wall = @e[type=area_effect_cloud,tag=B,sort=random] random
execute if score minute master.timer matches 0 run scoreboard players operation wall hitw_wall = @e[type=area_effect_cloud,tag=C,sort=random] random

execute unless score prevwall hitw_wall = wall hitw_wall run function hitw:wall/south/wall
execute if score prevwall hitw_wall = wall hitw_wall run function hitw:wall/south/random
execute unless score prevwall hitw_wall = wall hitw_wall run scoreboard players operation prevwall hitw_wall = wall hitw_wall