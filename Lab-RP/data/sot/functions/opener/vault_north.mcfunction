# This will open a VAULT DOOR facing north. The area effect cloud should be placed on the LOWER Z Axis center.
# The door size is 5 Long 2 Wide 5 Tall

scoreboard players add @e[type=area_effect_cloud,tag=opener_vault_small,tag=north,tag=!inactive] sot_gateopen 1
execute as @e[type=area_effect_cloud,tag=opener_vault_small,tag=north,tag=!inactive] at @s run clone ~2 ~ ~1 ~-2 ~4 ~ ~-2 ~-1 ~ replace move

kill @e[type=area_effect_cloud,tag=opener_vault_small,scores={sot_gateopen=5..},tag=!inactive]