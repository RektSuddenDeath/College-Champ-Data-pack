# This will open a LARGE VAULT DOOR facing north. The area effect cloud should be placed on the LOWER Z Axis center.
# The door size is 7 Long 2 Wide 6 Tall

scoreboard players add @e[type=area_effect_cloud,tag=opener_vault_large,tag=north,tag=!inactive] sot_gateopen 1
execute as @e[type=area_effect_cloud,tag=opener_vault_large,tag=north,tag=!inactive] at @s run clone ~3 ~ ~1 ~-3 ~5 ~ ~-3 ~-1 ~ replace move

kill @e[type=area_effect_cloud,tag=opener_vault_large,scores={sot_gateopen=6..},tag=!inactive]