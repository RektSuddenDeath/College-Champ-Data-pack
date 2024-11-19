# This will open a LARGE VAULT DOOR facing north. The area effect cloud should be placed on the LOWER X Axis center.
# The door size is 7 Long 2 Wide 6 Tall

scoreboard players add @e[type=area_effect_cloud,tag=opener_vault_large,tag=west,tag=!inactive] sot_gateopen 1
execute as @e[type=area_effect_cloud,tag=opener_vault_large,tag=west,tag=!inactive] at @s run clone ~1 ~ ~3 ~ ~5 ~-3 ~ ~-1 ~-3 replace move

kill @e[type=area_effect_cloud,tag=opener_vault_large,scores={sot_gateopen=6..},tag=!inactive]