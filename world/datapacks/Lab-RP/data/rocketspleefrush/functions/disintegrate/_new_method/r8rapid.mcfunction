
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run summon marker ~ ~ ~ {Tags:["killarena_marker"],data:{radii:8,speed:0.08f,accel:0.0000200f}}
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run kill @s