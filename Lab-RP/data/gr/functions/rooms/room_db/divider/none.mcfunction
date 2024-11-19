




$execute as @e[type=minecraft:area_effect_cloud,tag=gr_$(team)anchor] at @s positioned ~33 ~10 ~13 as @a[dx=3,dy=3,dz=4,team=$(team)] run scoreboard players add 1 gr_div_$(team) 1