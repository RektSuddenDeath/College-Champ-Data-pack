# This will open a GATE facing north, area effect cloud shall be placed on the lowest block on the LOWER Z axis center.
# The gate size is 3 wide and 4 tall and only operates iron bars.

scoreboard players add @e[type=area_effect_cloud,tag=opener_gate,tag=north] sot_gateopen 1
execute as @e[type=area_effect_cloud,tag=opener_gate,tag=north] at @s run fill ~1 ~ ~ ~-1 ~ ~ air replace iron_bars
execute as @e[type=area_effect_cloud,tag=opener_gate,tag=north] at @s run tp @s ~ ~1 ~

kill @e[type=area_effect_cloud,tag=opener_gate,scores={sot_gateopen=4..}]