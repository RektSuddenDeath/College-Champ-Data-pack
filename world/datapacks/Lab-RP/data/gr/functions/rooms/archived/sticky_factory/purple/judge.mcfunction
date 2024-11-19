# Anchor 14886 91 14968
# ID 1 City Targets
# 
function gr:rooms/4/purple/time
#
# Give players levitation within the range, to prevent jumping
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s positioned ~10 ~9 ~18 run effect give @a[team=purple,dx=10,dy=1,dz=10] levitation 1 255 true
# This will change the players' blocks
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~13 ~6 ~21 ~17 ~6 ~25 stone_bricks
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s positioned ~13 ~7 ~21 run execute as @a[team=purple,dx=4,dy=1.8,dz=3] at @s run tp @s ~ 101 ~
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s positioned ~13 ~9 ~21 run execute as @a[team=purple,dx=4,dy=1,dz=3] at @s run function gr:rooms/4/purple/changeblock
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run fill ~13 ~7 ~21 ~17 ~7 ~25 stone_bricks
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run clone ~13 ~6 ~21 ~17 ~6 ~25 ~13 ~7 ~21 filtered diamond_block
execute as @e[type=minecraft:area_effect_cloud,tag=gr_purpleanchor] at @s run clone ~13 ~6 ~21 ~17 ~6 ~25 ~13 ~7 ~21 filtered emerald_block
#
scoreboard objectives add gr_purpleobj dummy

execute as @e[type=area_effect_cloud,tag=gr_purpleanchor] at @s if blocks ~13 ~9 ~5 ~17 ~9 ~9 ~13 ~9 ~21 all run scoreboard players add 1 gr_purpleobj 1

execute if score 1 gr_purpleobj matches 1 run function gr:rooms/4/purple/complete
scoreboard objectives remove gr_purpleobj