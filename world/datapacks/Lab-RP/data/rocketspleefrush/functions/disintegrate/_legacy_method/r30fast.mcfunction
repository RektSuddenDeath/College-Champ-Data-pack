
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s run summon marker ~ ~ ~ {Tags:["killarena"]}
execute as @e[type=area_effect_cloud,tag=killarena_source] at @s store success score success rsr_disintegrate run spreadplayers ~ ~ 0 30 under 199 true @e[type=marker,tag=killarena]


execute as @e[type=marker,tag=killarena] at @s run function rocketspleefrush:disintegrate/removeblock


scoreboard players add progress rsr_disintegrate 1
execute if score success rsr_disintegrate matches 0 run scoreboard players set progress rsr_disintegrate 0
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~30 ~5 ~30 ~-30 ~-2 ~-30 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~30 ~-3 ~30 ~-30 ~-10 ~-30 air
#execute if score success rsr_disintegrate matches 0 run execute as @e[type=marker,tag=killarena] at @s run fill ~30 ~-10 ~30 ~-30 ~-17 ~-30 air
execute if score success rsr_disintegrate matches 0 run kill @e[type=area_effect_cloud,tag=killarena_source]

kill @e[type=marker,tag=killarena]

execute if score progress rsr_disintegrate matches 1..45 run function rocketspleefrush:disintegrate/r30fast
execute if score progress rsr_disintegrate matches 46 if score success rsr_disintegrate matches 1 run schedule function rocketspleefrush:disintegrate/r30fast 1t
execute if score progress rsr_disintegrate matches 46 run scoreboard players set progress rsr_disintegrate 0