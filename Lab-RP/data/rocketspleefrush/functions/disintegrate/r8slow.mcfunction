
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run summon marker ~ ~ ~ {Tags:["killarena"]}
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s store success score success rsr_disintegrate run spreadplayers ~ ~ 0 8 under 300 true @e[type=marker,tag=killarena]

execute as @e[type=marker,tag=killarena] at @s run function rocketspleefrush:disintegrate/removeblock


scoreboard players add progress rsr_disintegrate 1
execute if score success rsr_disintegrate matches 0 run scoreboard players set progress rsr_disintegrate 0
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~8 ~5 ~8 ~-8 ~-2 ~-8 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~8 ~-3 ~8 ~-8 ~-10 ~-8 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~8 ~-10 ~8 ~-8 ~-17 ~-8 air
execute if score success rsr_disintegrate matches 0 run kill @e[type=area_effect_cloud,tag=killarena_source]

kill @e[type=marker,tag=killarena]

execute if score progress rsr_disintegrate matches 1..2 run function rocketspleefrush:disintegrate/r8slow
execute if score progress rsr_disintegrate matches 3 if score success rsr_disintegrate matches 1 run schedule function rocketspleefrush:disintegrate/r8slow 1t
execute if score progress rsr_disintegrate matches 3 run scoreboard players set progress rsr_disintegrate 0