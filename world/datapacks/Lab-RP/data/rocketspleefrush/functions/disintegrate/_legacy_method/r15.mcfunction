
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run summon marker ~ ~ ~ {Tags:["killarena"]}
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s store success score success rsr_disintegrate run spreadplayers ~ ~ 0 15 under 199 true @e[type=marker,tag=killarena]

execute as @e[type=marker,tag=killarena] at @s run function rocketspleefrush:disintegrate/removeblock


scoreboard players add progress rsr_disintegrate 1
execute if score success rsr_disintegrate matches 0 run scoreboard players set progress rsr_disintegrate 0
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~15 ~5 ~15 ~-15 ~-2 ~-15 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~15 ~-3 ~15 ~-15 ~-10 ~-15 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~15 ~-10 ~15 ~-15 ~-17 ~-15 air
execute if score success rsr_disintegrate matches 0 run kill @e[type=area_effect_cloud,tag=killarena_source]

kill @e[type=marker,tag=killarena]

execute if score progress rsr_disintegrate matches 1..15 run function rocketspleefrush:disintegrate/r15
execute if score progress rsr_disintegrate matches 16 if score success rsr_disintegrate matches 1 run schedule function rocketspleefrush:disintegrate/r15 1t
execute if score progress rsr_disintegrate matches 16 run scoreboard players set progress rsr_disintegrate 0