
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run summon marker ~ ~ ~ {Tags:["killarena"]}
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s store success score success rsr_disintegrate run spreadplayers ~ ~ 0 5 under 300 true @e[type=marker,tag=killarena]

execute as @e[type=marker,tag=killarena] at @s run function rocketspleefrush:disintegrate/removeblock


scoreboard players add progress rsr_disintegrate 1
execute if score success rsr_disintegrate matches 0 run scoreboard players set progress rsr_disintegrate 0
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~4 ~5 ~4 ~-4 ~-2 ~-4 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~4 ~-3 ~4 ~-4 ~-10 ~-4 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~4 ~-10 ~4 ~-4 ~-17 ~-4 air
execute if score success rsr_disintegrate matches 0 run kill @e[type=area_effect_cloud,tag=killarena_source]

kill @e[type=marker,tag=killarena]

execute if score progress rsr_disintegrate matches 1..19 run function rocketspleefrush:disintegrate/r5rapid
execute if score progress rsr_disintegrate matches 20 if score success rsr_disintegrate matches 1 run schedule function rocketspleefrush:disintegrate/r5rapid 1t
execute if score progress rsr_disintegrate matches 20 run scoreboard players set progress rsr_disintegrate 0