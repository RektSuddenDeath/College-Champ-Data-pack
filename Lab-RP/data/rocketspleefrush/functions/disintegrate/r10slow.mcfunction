
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run summon marker ~ ~ ~ {Tags:["killarena"]}
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s store success score success rsr_disintegrate run spreadplayers ~ ~ 0 10 under 199 true @e[type=marker,tag=killarena]

execute as @e[type=marker,tag=killarena] at @s run function rocketspleefrush:disintegrate/removeblock



scoreboard players add progress rsr_disintegrate 1
execute if score success rsr_disintegrate matches 0 run scoreboard players set progress rsr_disintegrate 0
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~10 ~5 ~10 ~-10 ~-2 ~-10 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~10 ~-3 ~10 ~-10 ~-10 ~-10 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~10 ~-10 ~10 ~-10 ~-17 ~-10 air
execute if score success rsr_disintegrate matches 0 run kill @e[type=area_effect_cloud,tag=killarena_source]

kill @e[type=marker,tag=killarena]

execute if score progress rsr_disintegrate matches 1..3 run function rocketspleefrush:disintegrate/r10slow
execute if score progress rsr_disintegrate matches 4 if score success rsr_disintegrate matches 1 run schedule function rocketspleefrush:disintegrate/r10slow 1t
execute if score progress rsr_disintegrate matches 4 run scoreboard players set progress rsr_disintegrate 0