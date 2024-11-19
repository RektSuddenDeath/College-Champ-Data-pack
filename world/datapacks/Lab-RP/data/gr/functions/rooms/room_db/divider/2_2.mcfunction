
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s positioned ~33 ~10 ~5 as @a[dx=3,dy=3,dz=4,team=$(team),limit=2] run scoreboard players add 1 gr_div_$(team) 1
$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s positioned ~33 ~10 ~21 as @a[dx=3,dy=3,dz=4,team=$(team),limit=2] run scoreboard players add 1 gr_div_$(team) 1
