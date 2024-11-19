
# 
function gr:rooms/8/cyan/time
# Lapis
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~10 100 ~12 stone_pressure_plate[powered=false] if block ~8 100 ~5 stone_pressure_plate[powered=false] run setblock ~20 94 ~27 redstone_torch
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~10 100 ~12 stone_pressure_plate[powered=true] run setblock ~20 94 ~27 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~8 100 ~5 stone_pressure_plate[powered=true] run setblock ~20 94 ~27 air

# Amethyst
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~12 stone_pressure_plate[powered=false] if block ~9 100 ~25 stone_pressure_plate[powered=false] if block ~10 100 ~18 stone_pressure_plate[powered=false] run setblock ~14 94 ~27 redstone_torch
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~12 stone_pressure_plate[powered=true] run setblock ~14 94 ~27 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~9 100 ~25 stone_pressure_plate[powered=true] run setblock ~14 94 ~27 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~10 100 ~18 stone_pressure_plate[powered=true] run setblock ~14 94 ~27 air


# Emerald
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~18 stone_pressure_plate[powered=false] if block ~25 100 ~25 stone_pressure_plate[powered=false] if block ~7 100 ~12 stone_pressure_plate[powered=false] run setblock ~16 94 ~4 redstone_torch
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~18 stone_pressure_plate[powered=true] run setblock ~16 94 ~4 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~25 100 ~25 stone_pressure_plate[powered=true] run setblock ~16 94 ~4 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~7 100 ~12 stone_pressure_plate[powered=true] run setblock ~16 94 ~4 air

# Diamond
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~16 100 ~20 stone_pressure_plate[powered=false] if block ~7 100 ~18 stone_pressure_plate[powered=false] if block ~24 100 ~5 stone_pressure_plate[powered=false] run setblock ~17 94 ~27 redstone_torch
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~16 100 ~20 stone_pressure_plate[powered=true] run setblock ~17 94 ~27 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~7 100 ~18 stone_pressure_plate[powered=true] run setblock ~17 94 ~27 air
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~24 100 ~5 stone_pressure_plate[powered=true] run setblock ~17 94 ~27 air

# Slow
execute as @a[team=cyan] at @s if block ~ ~ ~ stone_pressure_plate[powered=true] run effect give @s slowness 2 4 true
#
scoreboard objectives add gr_cyanobj dummy

execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~10 100 ~12 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~7 100 ~18 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~7 100 ~12 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1
execute as @e[type=area_effect_cloud,tag=gr_cyananchor] at @s if block ~10 100 ~18 stone_pressure_plate[powered=true] run scoreboard players add 1 gr_cyanobj 1


execute if score 1 gr_cyanobj matches 4 run function gr:rooms/8/cyan/complete
scoreboard objectives remove gr_cyanobj