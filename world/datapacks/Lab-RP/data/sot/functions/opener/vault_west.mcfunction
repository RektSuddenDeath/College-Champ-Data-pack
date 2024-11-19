# This will open a VAULT DOOR facing west. The area effect cloud should be placed on the LOWER X Axis center.
# The door size is 5 Long 2 Wide 5 Tall

scoreboard players add @e[type=area_effect_cloud,tag=opener_vault_small,tag=west,tag=!inactive] sot_gateopen 1
execute as @e[type=area_effect_cloud,tag=opener_vault_small,tag=west,tag=!inactive] at @s run clone ~1 ~ ~2 ~ ~4 ~-2 ~ ~-1 ~-2 replace move

kill @e[type=area_effect_cloud,tag=opener_vault_small,scores={sot_gateopen=5..},tag=!inactive]