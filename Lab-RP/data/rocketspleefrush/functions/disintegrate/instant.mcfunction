execute as @e[type=area_effect_cloud,tag=mapitem] at @s run fill ~-30 ~30 ~-30 ~30 ~-30 ~30 air


execute as @e[type=marker,tag=killarena_marker] at @s run fill ~-30 ~30 ~-30 ~30 ~-30 ~30 air

kill @e[type=area_effect_cloud,tag=mapitem]
kill @e[type=item_display,tag=nextplatform]
kill @e[type=marker,tag=killarena_marker]