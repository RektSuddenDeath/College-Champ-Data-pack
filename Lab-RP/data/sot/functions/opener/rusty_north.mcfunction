# This will open a VAULT DOOR facing north. The area effect cloud should be placed on the LOWER Z Axis center.
# The door size is 3 Long 2 Wide 4 Tall

scoreboard players add @e[type=area_effect_cloud,tag=opener_rusty,tag=north] sot_gateopen 1
execute as @e[type=area_effect_cloud,tag=opener_rusty,tag=north] at @s run clone ~1 ~1 ~1 ~-1 ~3 ~ ~-1 ~ ~ replace move

kill @e[type=area_effect_cloud,tag=opener_rusty,scores={sot_gateopen=4..}]