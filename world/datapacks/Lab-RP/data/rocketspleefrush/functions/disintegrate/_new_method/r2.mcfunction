# *100000
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run summon marker ~ ~ ~ {Tags:["killarena_marker"],data:{radii:2,speed:0.08f,accel:0.0000105f}}
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run kill @s