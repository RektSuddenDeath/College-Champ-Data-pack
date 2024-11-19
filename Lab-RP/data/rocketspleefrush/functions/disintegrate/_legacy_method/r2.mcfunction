
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run summon marker ~ ~ ~ {Tags:["killarena"]}
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s store success score success rsr_disintegrate run spreadplayers ~ ~ 0 2 under 300 true @e[type=marker,tag=killarena]

execute as @e[type=marker,tag=killarena] at @s run function rocketspleefrush:disintegrate/removeblock


scoreboard players add progress rsr_disintegrate 1
execute if score success rsr_disintegrate matches 0 run scoreboard players set progress rsr_disintegrate 0
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~2 ~5 ~2 ~-2 ~-2 ~-2 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~2 ~-3 ~2 ~-2 ~-10 ~-2 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~2 ~-10 ~2 ~-2 ~-17 ~-2 air
execute if score success rsr_disintegrate matches 0 run kill @e[type=area_effect_cloud,tag=killarena_source]

kill @e[type=marker,tag=killarena]

execute if score progress rsr_disintegrate matches 1..9 run function rocketspleefrush:disintegrate/r2
execute if score progress rsr_disintegrate matches 10 if score success rsr_disintegrate matches 1 run schedule function rocketspleefrush:disintegrate/r2 1t
execute if score progress rsr_disintegrate matches 10 run scoreboard players set progress rsr_disintegrate 0